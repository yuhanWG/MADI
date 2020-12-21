import numpy as np
from tkinter import *
from visu import Tkmdp


class Generator():
	def __init__(self,nb_ligne,nb_colonne,PMur,PCouleur,p):
		'''
		IN: 
			nb_ligne,nb_colonne: grilles rectangulaires de taille controllees
			PMur: probabilite d'occurence des murs controllees
			PCouleur: probabilite d'attribution des couleurs controllees
			p: probabilite du mouvement
		self:
			self.cases: taille [nb_ligne,nb_colonne,2] enregistre la couleur et le chiffre correspond a chaque case
			self.cases[:,:,0]: couleurs {0,1,2,3,4}. 0 represente la mur
			self.cases[:,:,1]: chiffre [1,9]
			self.RGB: definition des couleurs
		'''
		self.nb_ligne = nb_ligne
		self.nb_colonne = nb_colonne
		self.PMur = PMur
		self.DictCouleur = {"vert":1,"bleu":2,"rouge":3,"noir":4}
		#RGB information for {walls, vert, bleu,rouge,noir}
		self.RGB = ["#4169E1","#25A531","#0B79F7","#D20B18","#2D2B2B"]
		#pour chaque case, enregistre sa couleur(:,:,0) et son chiffre(:,:,1)
		self.cases = np.zeros((nb_ligne,nb_colonne,2))
		self.pVert, self.pBleu, self.pRouge, self.Pnoir = PCouleur

		#Tkinter
		self.tk = Tk()
		self.tk.title('MDP')
		self.p = p

	def random_init(self):
		#initialiser les murs
		for i in range(self.nb_ligne):
			for j in range(self.nb_colonne):
				m = np.random.rand()
				#?difference avec np.random.uniform(0,1)
				if(m>self.PMur):
					#attribuer un chiffre
					self.cases[i,j,1] = np.random.randint(1,10,dtype='int64')
					#self.cases[i,j,1] = np.random.random_integers(9)
					#print(type(self.cases[i,j,1]))
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
		#print(np.where(self.cases[:,:,1]==0))
		#print(np.where(self.cases[:,:,0]==0))

		#le point de depart et la destination et les cases approches ne peuvent pas avoir la mur
		#numpy.random.randInt(low,high): low inclusive, high exclusive
		self.cases[0,0,0]=np.random.randint(1,5)
		self.cases[0,1,0]=np.random.randint(1,5)
		self.cases[1,0,0]=np.random.randint(1,5)
		self.cases[self.nb_ligne-1,self.nb_colonne-1,0]=np.random.randint(1,5)
		self.cases[self.nb_ligne-2,self.nb_colonne-1,0]=np.random.randint(1,5)
		self.cases[self.nb_ligne-1,self.nb_colonne-2,0]=np.random.randint(1,5)

		print("couleurs")
		print(self.cases[:,:,0])
		print("chiffre")
		print(self.cases[:,:,1])

		
		
		tkmdp = Tkmdp(self.tk, self.cases,self.p,self.RGB)
		tkmdp.initialiser()

		
	


if __name__=="__main__":
	g = Generator(10,15,0.1,[0.1,0.2,0.3,0.4],0.6)
	g.random_init()

