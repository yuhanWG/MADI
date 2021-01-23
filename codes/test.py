from fonctions import *
from env import *
from grille import *
import sys
import matplotlib.pyplot as plt

gamma = 1
N = 15
if __name__=="__main__":
	env = Env(10,15,0.8,0.2,[0.3,0.3,0.2,0.2])


	cases=env.reset()
	new_reward=[0,-1,-10,-100,-1000]
	env.reset_reward(new_reward)

	g = grille(env,problem='risque')
	g.initialiser(gamma)

	nb_iteration,value_table,policy = value_iteration(env,gamma,problem='risque')
	dict_action = {0:'U',1:'D',2:'L',3:'R'}
	visu_policy(value_table,policy, dict_action,cases)

	#print(env.reward)
	
	'''
	policy,v_obj=dual_pl_mono(env,gamma,problem="equilibre")
	p = get_a_policy(policy)
	visu_policy_plt(p,env)

	#print(policy)
	
	cout_total,cout_a = simuler(env,policy,problem="equilibre")

	p,v=minmax_policy(env,gamma)
	pn = get_a_policy(p)
	visu_policy_plt(pn,env)

	ct,cout_b = simuler(env,p,problem="equilibre")
	

	print(cout_total,ct)
	print(cout_a,cout_b)
'''
	