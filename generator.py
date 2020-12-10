import numpy as np
from tkinter import *
#from visu import Tkmdp


def visualiser(root,Canevas,zoom,cases,RGB):
		nblignes = cases.shape[0]
		nbcolonnes = cases.shape[1]
		Largeur = zoom*20*nbcolonnes+40
		Hauteur = zoom*20*nblignes+40
		mywhite = "#FFFFFF"
		myyellow="#F9FB70"
		PosX = 20+10*zoom
		PosY = 20+10*zoom
		
		
		for i in range(nblignes+1):
			ni=zoom*20*i+20
			Canevas.create_line(20, ni, Largeur-20,ni)
		for j in range(nbcolonnes+1):
			nj=zoom*20*j+20
			Canevas.create_line(nj, 20, nj, Hauteur-20)
		colordraw(zoom,Canevas,cases,RGB)
		Canevas.focus_set()
		Canevas.pack(padx =5, pady =5)
		Pion = Canevas.create_oval(PosX-10,PosY-10,PosX+10,PosY+10,width=2,outline='black',fill=myyellow)
		Canevas.coords(Pion,PosX -9*zoom, PosY -9*zoom, PosX +9*zoom, PosY +9*zoom)

		

def colordraw(zoom,Canevas,cases,RGB):
		nblignes = cases.shape[0]
		nbcolonnes = cases.shape[1]
		for i in range(nblignes):
			for j in range(nbcolonnes):          
				y =zoom*20*i+20
				x =zoom*20*j+20
				if cases[i,j,0]>0:            
				#Canevas.create_oval(x+zoom*(10-3),y+zoom*(10-3),x+zoom*(10+3),y+zoom*(10+3),width=1,outline=color[g[i,j]],fill=color[g[i,j]])
					#print(type(cases[i,j,0]))
					color = int(cases[i,j,0])
					Canevas.create_text(x+zoom*(10),y+zoom*(10), text=str(cases[i,j,1]),fill=RGB[color],font = "Verdana "+str(int(6*zoom))+" bold")
				else:
					Canevas.create_rectangle(x, y, x+zoom*20, y+zoom*20, fill=RGB[0])

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
		'''
		self.nb_ligne = nb_ligne
		self.nb_colonne = nb_colonne
		self.PMur = PMur
		self.DictCouleur = {"vert":1,"bleu":2,"rouge":3,"noir":4}
		#RGB information for {walls, vert, bleu,rouge,noir}
		self.RGB = ["#5E5E64","#25A531","#0B79F7","#D20B18","#2D2B2B"]
		#pour chaque case, enregistre sa couleur(:,:,0) et son chiffre(:,:,1)
		self.cases = np.zeros((nb_ligne,nb_colonne,2))
		self.pVert, self.pBleu, self.pRouge, self.Pnoir = PCouleur

		#Tkinter
		self.tk = Tk()
		self.tk.title('MDP')

	def random_init(self):
		#initialiser les murs
		for i in range(self.nb_ligne):
			for j in range(self.nb_colonne):
				m = np.random.rand()
				#?difference avec np.random.uniform(0,1)
				if(m>self.PMur):
					#attribuer un chiffre
					self.cases[i,j,1] = np.random.randint(low=1,high=10)
					#si cette case n'est pas une mur,alors distribuer une couleur
					c = np.random.uniform(0,1)
					if c<self.pVert:
						self.cases[i,j,0] = self.DictCouleur["vert"]
					else:
						if c<self.pVert+self.pBleu:
							self.cases[i,j,0] = self.DictCouleur["bleu"]
						else:
							if c<self.pVert+self.pBleu+self.pRouge:
								self.cases[i,j,0] = self.DictCouleur["bleu"]
							else:
								self.cases[i,j,0] = self.DictCouleur["noir"]


		#le point de depart et la destination et les cases approches ne peuvent pas avoir la mur
		#numpy.random.randInt(low,high): low inclusive, high exclusive
		self.cases[0,0,0]=np.random.randint(1,5)
		self.cases[0,1,0]=np.random.randint(1,5)
		self.cases[1,0,0]=np.random.randint(1,5)
		self.cases[self.nb_ligne-1,self.nb_colonne-1,0]=np.random.randint(1,5)
		self.cases[self.nb_ligne-2,self.nb_colonne-1,0]=np.random.randint(1,5)
		self.cases[self.nb_ligne-1,self.nb_colonne-2,0]=np.random.randint(1,5)
		#print(self.cases)

		print("couleurs")
		print(self.cases[:,:,0])
		print("chiffre")
		print(self.cases[:,:,1])

		#visualiser(self.tk,2,self.cases, self.RGB)
		zoom=2
		nblignes = self.cases.shape[0]
		nbcolonnes = self.cases.shape[1]

		Largeur = zoom*20*nbcolonnes+40
		Hauteur = zoom*20*nblignes+40
		mywhite = "#FFFFFF"
		
		Canevas = Canvas(self.tk, width = Largeur, height =Hauteur, bg =mywhite)
		visualiser(self.tk,Canevas,zoom,self.cases,self.RGB)
		#colordraw(zoom,Canevas,self.cases,self.RGB)

		
		self.tk.mainloop()
	


if __name__=="__main__":
	g = Generator(5,10,0.1,[0.1,0.2,0.3,0.4],0.5)
	g.random_init()

