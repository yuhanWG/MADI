import numpy as np
import matplotlib
import matplotlib.pyplot as plt
import gurobipy as gp
from gurobipy import GRB

max_reward = 1000



def visu_policy(value,policy, dict_action,cases):
    fig, ax = plt.subplots()
    value[-1,-1]=1000
    im = ax.imshow(value)
    nblignes = value.shape[0]
    nbColones = value.shape[1]
    for li in range(nblignes):
        for cj in range(nbColones):
            if li==nblignes-1 and cj==nbColones-1:
                text = ax.text(cj,li,"G",ha="center",va="center")
            else:
                if cases[li,cj,0]!=0:
                    text = ax.text(cj,li,str(dict_action[policy[li,cj]]),ha="center",va="center")
    plt.colorbar(im)
    plt.show()

def visu_policy_plt(pn,env):
    nblig,nbcol = pn.shape
    for i in range(nblig+1):
        plt.hlines(i,0,nbcol)
    for j in range(nbcol+1):
        plt.vlines(j,0,nblig)
    for li in range(nblig):
        for cj in range(nbcol):
            if env.cases[li,cj,0]!=0 and not(li==nblig-1 and cj==nbcol-1):
                a = pn[li,cj]
                if(a==0):
                    plt.annotate('',xy=(cj+0.5,nblig-li),xytext=(cj+0.5,nblig-li-1),arrowprops=dict(arrowstyle='->'))
                #print(cj,nblig-li)
                if(a==1):
                    plt.annotate('',xy=(cj+0.5,nblig-li-1),xytext=(cj+0.5,nblig-li),arrowprops=dict(arrowstyle='->'))
                if(a==3):
                    plt.annotate('',xy=(cj+1,nblig-li-0.5),xytext=(cj,nblig-li-0.5),arrowprops=dict(arrowstyle='->'))
                if(a==2):
                    plt.annotate('',xy=(cj,nblig-li-0.5),xytext=(cj+1,nblig-li-0.5),arrowprops=dict(arrowstyle='->'))

    plt.show()


def value_iteration(env,gamma,problem="risque",max_iteration=2000):
    nblignes,nbColonnes = env.state_space
    value_table = np.zeros(env.state_space)
    threshold = 0.001
    delta = 1
    nb_iteration = 0
    if problem == "risque":
        reward = env.reward
    else:
        if problem == "equilibre":
            reward = -env.cases[:,:,1]
            reward[-1,-1] = max_reward
        else:
            raise Exception("Le probleme n'est pas inclus!")

    while(delta>threshold):
        delta = 0

        current_values = value_table.copy()
        for li in range(nblignes):
            for cj in range(nbColonnes):
                if not(li==nblignes-1 and cj==nbColonnes-1):
                    if env.cases[li,cj,0]>0:
                        Qs_a = []
                        for a in env.action_space:
                            next_state, proba_transition = env.step(li,cj,a)
                            v_s = [value_table[s] for s in next_state]
                            R = [reward[s] for s in next_state]
                            Rs = np.sum(np.array(R)*np.array(proba_transition))
                            Qs_a.append(Rs+gamma*np.sum(np.array(proba_transition)*np.array(v_s)))
                        current_values[li,cj] = max(Qs_a)
                delta = max(delta,np.abs(value_table[li,cj]-current_values[li,cj]))

        value_table = current_values
        nb_iteration += 1


    policy = np.zeros(env.state_space)
    for i in range(nblignes):
            for j in range(nbColonnes):
                if not (i==nblignes-1 and j==nbColonnes-1):
                    if(env.cases[i,j,0]>0):
                        Qs_a = []
                            #Rs = self.risque[int(self.cases[i,j,0])]
                        for a in env.action_space:
                            next_state, proba_transition = env.step(i,j,a)
                            v_s = [value_table[s] for s in next_state]
                            R = [reward[s] for s in next_state]
                            Rs = np.sum(np.array(R)*np.array(proba_transition))
                            Qs_a.append(Rs+gamma*np.sum(np.array(proba_transition)*np.array(v_s)))
                        #print("hello",Qs_a)
                        Qs_a = np.array(Qs_a)
                        policy[i,j] = np.argmax(Qs_a)

    return nb_iteration,value_table,policy



def dual_pl_mono(env,gamma,pure=False):
    nblignes,nbColonnes = env.state_space
    state = env.cases[:,:,0]

    m = gp.Model()
    m.setParam("OutputFlag",False)

    x_s_a = m.addVars(np.arange(nblignes),np.arange(nbColonnes),env.action_space,vtype=GRB.CONTINUOUS,name="x_s_a")

    #d = []


    obj = gp.LinExpr()

    for i in range(nblignes):
        for j in range(nbColonnes):
            if not(env.cases[i,j,0]==0):
                if not(i==nblignes-1 and j==nbColonnes-1):
                    for a in env.action_space:
                        next_state, proba_transition = env.step(i,j,a)
                        R = [env.reward[s] for s in next_state]
                        #print(proba_transition)
                        Rs = np.sum(np.array(R)*np.array(proba_transition))
                        obj += x_s_a[(i,j,a)]*Rs
                        m.addConstr(x_s_a[(i,j,a)]>=0)

                    expr1 = gp.LinExpr()

                    for a in env.action_space:
                        expr1 += x_s_a[(i,j,a)]
                    #print(expr1)
                    last_state = env.step_back(i+1,j+1)
                    expr2 = gp.LinExpr()
                    for l in range(last_state.shape[1]):
                        _s_x,_s_y = last_state[:,l]
                        if env.cases[_s_x,_s_y,0]>0:
                        # end state cant move
                            if not(_s_x==nblignes-1 and _s_y==nbColonnes-1):
                                for a in env.action_space:
                                    next_state,proba_transition = env.step(_s_x,_s_y,a)
                                    if (i,j) in next_state:
                                        index = next_state.index((i,j))
                                        #print(proba_transition)
                                        #print(index)
                                        proba = proba_transition[index]
                                        #expr2.add(x_s_a[(_s_x,_s_y,a)],proba)
                                        expr2 += x_s_a[_s_x,_s_y,a]*proba
                
                
                    m.addConstr(expr1-gamma*expr2==1)

                
    
    if pure:

        d_s_a = m.addVars(np.arange(nblignes),np.arange(nbColonnes),env.action_space,vtype=GRB.BINARY,name="d_s_a")
    # determiner une politique pure
        for li in range(nblignes):
            for cj in range(nbColonnes):
                
                if env.cases[li,cj,0]>0:
                    if li!=nblignes-1 or cj!=nbColonnes-1:
                        expr = gp.LinExpr()
                        for a in env.action_space:
                            expr += d_s_a[(li,cj,a)]
                            m.addConstr((1-gamma)*x_s_a[(li,cj,a)]<=d_s_a[(li,cj,a)])
                            # m.addConstr(x_s_a[(li,cj,a)]<=1/(1-gamma))
                        m.addConstr(expr<=1)


    m.update()
    m.setObjective(obj,GRB.MAXIMIZE)
    m.optimize()

    if pure:
        m.write("myfilePure.lp")



    #
    try:
        policy=np.zeros((nblignes,nbColonnes,len(env.action_space)))
        for li in range(nblignes):
            for cj in range(nbColonnes):
                for a in range(len(env.action_space)):
                    v = x_s_a[(li,cj,env.action_space[a])]
                    policy[li,cj,a] = v.x
        return policy,m.objVal
    
    except:
        print("le modele est infeasable, veuillez recharger le env par reset()")
    '''
    normalisation
    '''

    


    


def normalise(policy):
    pn = policy.copy()
    nblignes,nbColonnes,nbActions = policy.shape
    for i in range(nblignes):
        for j in range(nbColonnes):
            if(np.sum(policy[i,j,:])!=0):
                pn[i,j,:] = policy[i,j,:]/np.sum(policy[i,j,:])
    return pn


def get_a_policy(policy):
    '''
    depuis une politique mixte, return a policy per qui peut etre visualiser

    '''
    policy = normalise(policy)
    nblignes,nbColonnes,nbActions = policy.shape
    pd = np.zeros((nblignes,nbColonnes))
    for i in range(nblignes):
        for j in range(nbColonnes):
            pd[i,j] = int(np.argmax(policy[i,j,:]))

    return pd



def minmax_policy(env,gamma):
    m = gp.Model()
    m.setParam("OutputFlag",False)

    ressources = env.cases[:,:,1].copy()
    ressources[-1,-1] = 0
        #? besoin de modifier la ressource consomme par la case but?
    state = env.cases[:,:,0]
    #critere = []
    nblignes,nbColonnes = env.state_space
    m = gp.Model()
    z = m.addVar(vtype=GRB.CONTINUOUS,name="z")
    
    x_s_a = m.addVars(np.arange(nblignes),np.arange(nbColonnes),env.action_space,vtype=GRB.CONTINUOUS,name="x_s_a")
    
    critere=[gp.LinExpr()]*4
    for f in range(4):
        expr = gp.LinExpr()
        for i in range(nblignes):
            for j in range(nbColonnes):
                if state[i,j]!=0:
                    if not(i==nblignes-1 and j==nbColonnes-1):     
                        for a in env.action_space:
                            m.addConstr(x_s_a[(i,j,a)]>=0)
                            next_state, proba_transition = env.step(i,j,a)
                            #print(i,j,next_state,proba_transition)
                            #print(i,j,a,next_state,proba_transition)
                            for x in range(len(next_state)):
                                s = next_state[x]
                                p = proba_transition[x]
                                fi = state[s]-1
                                if fi==f:
                                    R = ressources[s]*p
                                    expr += x_s_a[(i,j,a)]*R
                                    #print(i,j,a,s,ressources[s],p)
        #print(expr)
        m.addConstr(z>=expr,name="c"+str(f))
        #m.addConstr(z<=expr,name="c"+str(f))
        #critere.append(expr)
        critere[f]=expr
        
    for li in range(nblignes):
        for cj in range(nbColonnes):
            if state[li,cj]!=0:
                    if not(li==nblignes-1 and cj==nbColonnes-1):
                        expr1 = gp.LinExpr()
                        for a in env.action_space:
                            expr1 += x_s_a[(li,cj,a)]
                        
                        last_state = env.step_back(li+1,cj+1)
                        #print(expr1)
                        #print(li,cj,last_state)
                        expr2 = gp.LinExpr()
                        for l in range(last_state.shape[1]):
                            _s_x,_s_y = last_state[:,l]
                            if env.cases[_s_x,_s_y,0]>0:
                            # end state cant move
                                if not(_s_x==nblignes-1 and _s_y==nbColonnes-1):
                                    for a in env.action_space:
                                        next_state,proba_transition = env.step(_s_x,_s_y,a)
                                        if (li,cj) in next_state:
                                            index = next_state.index((li,cj))
                                            proba = proba_transition[index]
                                            expr2 += x_s_a[(_s_x,_s_y,a)]*proba
                        m.addConstr(expr1-gamma*expr2==1)
   
    m.setObjective(z,GRB.MINIMIZE)
    # m.setObjective(z,GRB.MAXIMIZE)
    m.write("myfile.lp")
    m.optimize()

    if m.status==GRB.OPTIMAL:
    
        policy=np.zeros((nblignes,nbColonnes,len(env.action_space)))
        for li in range(nblignes):
            for cj in range(nbColonnes):
                for a in range(len(env.action_space)):
                    v = x_s_a[(li,cj,env.action_space[a])]
                    policy[li,cj,a] = v.x

        '''
        pm=[]
        for i in range(len(critere)):
            #print(critere[i])
            print(critere[i].getValue())
        '''
        
        #print(policy)
        return policy,m.objVal
    else:
        raise Exception("modele infeasable")



def simuler(env,policy,problem="risque"):
    if problem=="risque":
        res = env.reward
    else:
        if problem=="equilibre":
            res = env.cases[:,:,1]
        else:
            raise Exception("Le probleme n'est pas inclus!")
    
    res[-1,-1]=0
    nblig,nbcol=env.state_space
    li=0
    cj=0
    cout_total=0
    cout_dis=np.zeros(4)

    cpt = 0
    
    if len(policy.shape)==2:
        # politique deterministe:
        while not(li==nblig-1 and cj==nbcol-1):
            if cpt>1000:
                raise Exception("policy not correct")

            index = int(policy[li,cj])
            action = env.action_space[index]
            next_state,proba = env.step(li,cj,action)
            if(len(next_state)!= len(proba)):
                print("Eror")
                print(env.cases)
                print(li,cj,action,next_state,proba)
            #print(li,cj,action,next_state,proba)
            if len(next_state)==1:
                li,cj = next_state[0]
            else:
                rand = np.random.uniform(0,1)
                if len(next_state)==2:
                    if rand<proba[0]:
                        li,cj = next_state[0]
                    else:
                        li,cj = next_state[1]
                else:
                    if rand<=proba[0]:
                        li,cj=next_state[0]
                    else:
                        if proba[0]<rand and rand<=proba[0]+proba[1]:
                            li,ci=next_state[1]
                        else:
                            li,cj=next_state[2]
            #print(li,cj,res[li,cj])
            cout_total+=res[li,cj]
            index = env.cases[li,cj,0]-1
            cout_dis[index] -= res[li,cj]
    else:
        if len(policy.shape)==3:
            # politique mixte
            # print("mixte")
            while not(li==nblig-1 and cj==nbcol-1):
                #print(li,cj)
                pUp,pD,pL,pR = policy[li,cj,:]
                rand = np.random.uniform(0,1)
                while(rand==0):
                    rand = np.random.uniform(0,1)
                if rand<=pUp:
                    #print("up")
                    next_state,proba=env.step(li,cj,"up")
                else:
                    if rand<=pUp+pD:
                        #print("down")
                        next_state,proba=env.step(li,cj,"down")
                    else:
                        if rand<=pUp+pD+pL:
                            #print("left")
                            next_state,proba=env.step(li,cj,"left")
                        else:
                            #print("right")
                            next_state,proba=env.step(li,cj,"right")
                if len(proba)==1:
                    li,cj = next_state[0]
                else:
                    rand = np.random.uniform(0,1)
                    if len(proba)==2:
                        if rand<proba[0]:
                            li,cj = next_state[0]
                        else:
                            li,cj = next_state[1]
                    else:
                        if rand<=proba[0]:
                            li,cj=next_state[0]
                        else:
                            if proba[0]<rand and rand<=proba[0]+proba[1]:
                                li,ci=next_state[1]
                            else:
                                li,cj=next_state[2]
                #print(li,cj,res[li,cj])
                cout_total+=res[li,cj]
                index = env.cases[li,cj,0]-1
                cout_dis[index] -= res[li,cj]
                
    return cout_total,cout_dis



