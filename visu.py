from tkinter import *

myyellow="#F9FB70"
mywhite = "#FFFFFF"
zoom = 2

class Tkmdp():
	def __init__(self,root,cases,p,RGB):
		'''
		'''
		self.root = root
		self.root.title = 'MDP'
		self.p = p
		self.Largeur = zoom*20*cases.shape[1]+40
		self.Hauteur = zoom*20*cases.shape[0]+40
		self.cases = cases
		self.RGB = RGB
		self.Canevas = Canvas(self.root, width = self.Largeur, height=self.Hauteur, bg=mywhite)
		self.PosX = 20+10*zoom
		self.PosY = 20+10*zoom
		self.Pion = self.Canevas.create_oval(self.PosX-10,self.PosY-10,self.PosX+10,self.PosY+10,width=2,outline='black',fill=myyellow)

	#cette partie consiste a manager le layout de tkinter
	def visualiser(self):
		return 0

	def colordraw(self):
		return 0

	def Clavier(self,event):
		touche = event.keysym
		#position actuel du robot
		nblignes = self.cases.shape[0]
		nbcolonnes = self.cases.shape[1]

		cj = round((self.PosX-30)/(20*zoom))
		li=round((self.PosY-30)/(20*zoom))

		if touche == 'Up' and li>0 and self.cases[li-1,cj,0]>0:
			self.PosY -= zoom*20
			#cost[g[li-1,cj,0]]+=g[li-1,cj,1]        
		# deplacement vers le bas
		if touche == 'Down' and li<nblignes-1 and self.cases[li+1,cj,0]>0:
			self.PosY += zoom*20
			
		# deplacement vers la droite
		if touche == 'Right' and cj< nbcolonnes-1 and self.cases[li,cj+1,0]>0:
			self.PosX += zoom*20
		 
		# deplacement vers la gauche
		if touche == 'Left' and cj >0 and self.cases[li,cj-1,0]>0:
			self.PosX -= zoom*20

		self.Canevas.coords(self.Pion,self.PosX -9*zoom, self.PosY -9*zoom, self.PosX +9*zoom, self.PosY +9*zoom)

		


	def initialiser(self):
		#Canevas = Canevas(self.root, width = self.Largeur, height=self.Hauteur, bg=self.mywhite)
		#visualisation
		
		nblignes = self.cases.shape[0]
		nbcolonnes = self.cases.shape[1]
		

		for i in range(nblignes+1):
			ni=zoom*20*i+20
			self.Canevas.create_line(20, ni, self.Largeur-20,ni)
		for j in range(nbcolonnes+1):
			nj=zoom*20*j+20
			self.Canevas.create_line(nj, 20, nj, self.Hauteur-20)
		

		#colordraw
		for i in range(nblignes):
			for j in range(nbcolonnes):          
				y = zoom*20*i+20
				x = zoom*20*j+20
				if self.cases[i,j,0]>0:            
				#Canevas.create_oval(x+zoom*(10-3),y+zoom*(10-3),x+zoom*(10+3),y+zoom*(10+3),width=1,outline=color[g[i,j]],fill=color[g[i,j]])
					#print(type(cases[i,j,0]))
					color = int(self.cases[i,j,0])
					self.Canevas.create_text(x+zoom*(10),y+zoom*(10), text=str(self.cases[i,j,1]),fill=self.RGB[color],font = "Verdana "+str(int(6*zoom))+" bold")
				else:
					self.Canevas.create_rectangle(x, y, x+zoom*20, y+zoom*20, fill=self.RGB[0])



		self.Canevas.focus_set()
		self.Canevas.bind('<Key>',self.Clavier)
		self.Canevas.pack(padx =5, pady =5)
		#position du robot
		self.Canevas.coords(self.Pion,self.PosX -9*zoom, self.PosY -9*zoom, self.PosX +9*zoom, self.PosY +9*zoom)
		self.root.mainloop()



