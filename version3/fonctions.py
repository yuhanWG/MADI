import numpy as np
import matplotlib
import matplotlib.pyplot as plt
import gurobipy as gp
from gurobipy import GRB


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
    plt.show()


def value_iteration(env,gamma,max_iteration=2000):
    nblignes,nbColonnes = env.state_space
    value_table = np.zeros(env.state_space)
    threshold = 0.001
    delta = 1
    nb_iteration = 0

    
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
                            R = [env.reward[s] for s in next_state]
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
                            R = [env.reward[s] for s in next_state]
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



    
    policy=np.zeros((nblignes,nbColonnes,len(env.action_space)))
    for li in range(nblignes):
        for cj in range(nbColonnes):
            for a in range(len(env.action_space)):
                v = x_s_a[(li,cj,env.action_space[a])]
                policy[li,cj,a] = v.x
    '''
    normalisation
    '''

    #print(m.display())

    return policy,m.objVal


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
    nblignes,nbColonnes,nbActions = policy.shape
    pd = np.zeros((nblignes,nbColonnes))
    for i in range(nblignes):
        for j in range(nbColonnes):
            pd[i,j] = int(np.argmax(policy[i,j,:]))

    return pd



def minmax_policy(env,gamma):
    ressources = env.cases[:,:,1]
    ressources[-1,-1]=0
    #? besoin de modifier la ressource consomme par la case but?
    state = env.cases[:,:,0]
    critere = []
    nblignes,nbColonnes = env.state_space
    m = gp.Model()
    z = m.addVar(vtype=GRB.CONTINUOUS,name="z")
    
    x_s_a = m.addVars(np.arange(nblignes),np.arange(nbColonnes),env.action_space,vtype=GRB.CONTINUOUS,name="x_s_a")
    
    for f in range(4):
        expr = gp.LinExpr()
        for i in range(nblignes):
            for j in range(nbColonnes):
                if state[i,j]!=0:
                    if not(i==nblignes-1 and j==nbColonnes-1):     
                        for a in env.action_space:
                            m.addConstr(x_s_a[(i,j,a)]>=0)
                            next_state, proba_transition = env.step(i,j,a)
                            #print(i,j,a,next_state,proba_transition)
                            for x in range(len(next_state)):
                                s = next_state[x]
                                p = proba_transition[x]

                                fi = state[s]-1
                                if fi==f:
                                    R = ressources[s]*p
                                    expr += x_s_a[(i,j,a)]*R
        m.addConstr(z>=expr,name="c"+str(f))
        critere.append(expr)
        
    for li in range(nblignes):
        for cj in range(nbColonnes):
            if state[li,cj]!=0:
                    if not(li==nblignes-1 and cj==nbColonnes-1):
                        expr1 = gp.LinExpr()
                        for a in env.action_space:
                            expr1 += x_s_a[(li,cj,a)]
                        
                        last_state = env.step_back(li+1,cj+1)
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
                                            expr2 += x_s_a[_s_x,_s_y,a]*proba
                        m.addConstr(expr1-gamma*expr2==1)
   
    m.setObjective(z,GRB.MINIMIZE)
    #m.write("myfile.lp")
    m.optimize()
    
    policy=np.zeros((nblignes,nbColonnes,len(env.action_space)))
    for li in range(nblignes):
        for cj in range(nbColonnes):
            for a in range(len(env.action_space)):
                v = x_s_a[(li,cj,env.action_space[a])]
                policy[li,cj,a] = v.x

    for i in range(len(critere)):
        print(critere[i])
    pm = np.array([critere[i].getValue() for i in range(4)])
    return policy,m.objVal,pm



