from fonctions import *
from env import *

if __name__=="__main__":
	env = Env(10,10,1,0.2,[0.1,0.2,0.3,0.4])
	env.reset()
	cases = env.cases
	p=dual_pl_mono(env,0.9)
	nb,v,policy=value_iteration(env,0.9,max_iteration=2000)
	pd=get_a_policy(p)
	dict_action={0:"U",1:"D",2:"L",3:"R"}
	visu_policy(v,pd,dict_action,cases)
	p2=dual_pl_mono(env,0.9,True)
	pd2 = get_a_policy(p2)
	visu_policy(v,pd2,dict_action,cases)