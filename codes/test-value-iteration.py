from fonctions import *
from env import *
from grille import *
import sys

if __name__=="__main__":
	nblig = int(sys.argv[1])
	nbcol = int(sys.argv[2])
	p = float(sys.argv[3])
	pr = sys.argv[4]
	gamma = float(sys.argv[5])

	if len(sys.argv)!=6:
		raise Exception("veuillez verifier les parametres: test-value-iteration.py -nblig -nbcol -p -gamma")

	env = Env(nblig,nbcol,p,0.2,[0.3,0.3,0.2,0.2])
	cases=env.reset()

	g = grille(env,problem=pr)
	g.initialiser(gamma)


	nb_iteration,value_table,policy = value_iteration(env,gamma,problem=pr)
	dict_action = {0:'U',1:'D',2:'L',3:'R'}
	visu_policy(value_table,policy, dict_action,cases)
	#simuler()

