from fonctions import *
from env import *
from grille import *
import sys

gamma = 0.99
if __name__=="__main__":
	nblig = int(sys.argv[1])
	nbcol = int(sys.argv[2])
	p = float(sys.argv[3])
	pr = sys.argv[4]

	if len(sys.argv)!=5:
		raise Exception("veuillez verifier les parametres: test-value-iteration.py -nblig -nbcol -p")


	env = Env(nblig,nbcol,p,0.2,[0.3,0.3,0.2,0.2])
	cases=env.reset()

	g = grille(env,problem=pr)
	g.initialiser(gamma,methode="programma lineaire")
