import numpy as np

'''
Cette classe consiste au generateur qui permet:
- engendrer aleatoirement des grilles rectangulaires de tailles controlees
- de placer la mur avec une probabilite controler
- d'attribuer une couleur par case avec une probabilite d'occurence des couleurs controlers
- de visualiser une grille tiree aleatoire et la position du robot
'''

class generator():
	def __init__(self, nblignes, nbColonnes, pMur, pCouleur):
		self.cases = np.zeros((nblignes,nbColonnes,2),dtype=int)
		self.pVert, self.pBleu, self.pRouge, self.pNoir = pCouleur
		self.PMur = pMur
		self.DictCouleur = {"vert":1,"bleu":2,"rouge":3,"noir":4}
		self.RGB = ["#4169E1","#25A531","#0B79F7","#D20B18","#2D2B2B"]
		self.nblignes = nblignes
		self.nbColonnes = nbColonnes


	def random_init(self):
		#initialiser les murs
		for i in range(self.nblignes):
			for j in range(self.nbColonnes):
				m = np.random.rand()
				#?difference avec np.random.uniform(0,1)
				if(m>self.PMur):
					#attribuer un chiffre
					self.cases[i,j,1] = np.random.randint(low=1,high=10,dtype=int)
					#si cette case n'est pas une mur,alors distribuer une couleur
					c = np.random.uniform(0,1)
					if c<self.pVert:
						self.cases[i,j,0] = self.DictCouleur["vert"]
					else:
						if c<self.pVert+self.pBleu:
							self.cases[i,j,0] = self.DictCouleur["bleu"]
						else:
							if c<self.pVert+self.pBleu+self.pRouge:
								self.cases[i,j,0] = self.DictCouleur["rouge"]
							else:
								self.cases[i,j,0] = self.DictCouleur["noir"]

		self.cases[0,0,0]=np.random.randint(1,5)
		self.cases[0,1,0]=np.random.randint(1,5)
		self.cases[1,0,0]=np.random.randint(1,5)
		self.cases[self.nblignes-1,self.nbColonnes-1,0]=np.random.randint(1,5)
		self.cases[self.nblignes-2,self.nbColonnes-1,0]=np.random.randint(1,5)
		self.cases[self.nblignes-1,self.nbColonnes-2,0]=np.random.randint(1,5)

		'''
		print("couleurs")
		print(self.cases[:,:,0])
		print("chiffre")
		print(self.cases[:,:,1])
	'''
		return self.cases