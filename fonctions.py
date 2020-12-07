import numpy as np
from tkinter import *

class Generator():
	def __init__(self,nb_ligne,nb_colonne,PMur,PCouleur):
		self.taille = taille
		self.PMur = PMur
		#self.PCouleur = PCouleur
		self.DictCouleur = {"vert":1,"bleu":2,"rouge":3,"noir":4}
		self.cases = np.zeros((taille[0],taille[1]))
		self.couleurs = np.zeros((taille[0],taille[1]))
		self.chiffres = np.zeros((taille[0],taille[1]))
		self.pVert, self.pBleu, self.pRouge, self.Pnoir = PCouleur

	def random_init(self):
		#initialiser les murs
		n,d = self.taille
		for i in range(n):
			for j in range(d):
				m = np.random.rand()
				#?difference avec np.random.uniform(0,1)
				if(m<self.PMur):
					#-1 represente la mur
					self.cases[i,j]=-1
				else:
					#attribuer un chiffre entre {1, ... ,9} par case
					self.chiffres[i,j] = np.random.randint(1,10)
					#si cette case n'est pas une mur,alors distribuer une couleur
					c = np.random.uniform(0,1)
					if c<self.pVert:
						self.couleurs[i,j] = self.DictCouleur["vert"]
					else:
						if c<self.pVert+self.pBleu:
							self.couleurs[i,j] = self.DictCouleur["bleu"]
						else:
							if c<self.pVert+self.pBleu+self.pRouge:
								self.couleurs[i,j] = self.DictCouleur["bleu"]
							else:
								self.couleurs[i,j] = self.DictCouleur["noir"]


		#le point de depart et la destination ne peuvent pas avoir la mur
		self.cases[0,0]=0
		self.cases[n-1,d-1]=0
		#les points autour des departs ou la destination ne peut pas avoir la mur

		#initialiser les couleurs:
