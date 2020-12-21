from tkinter import *
import numpy as np

myyellow = "#F9FB70"
mywhite = "#FFFFFF"
myblack = "#2D2B2B"
myred = "#D20B18"
mygreen = "#25A531"
myblue = "#0B79F7"
zoom = 2

class Tkmdp():
	def __init__(self,root,cases,p,RGB):
		'''
		IN:
			root: tk
			cases: ndarray de taille [nbligne,nbcolonne,2] enregistre les couleurs et les chiffres
			p : probabilite de transitioin entre une case et ses voisins
			RGB : les couleurs pour la visualisation

		attribut:
			self.Canvas : un widget Canvas (pour la grille)

		'''
		self.root = root
		self.p = p

		self.Largeur = zoom*20*cases.shape[1]+40
		self.Hauteur = zoom*20*cases.shape[0]+40
		self.cases = cases
		self.RGB = RGB

		self.Canevas = Canvas(self.root, width = self.Largeur, height=self.Hauteur, bg=mywhite)
		self.PosX = 20+10*zoom
		self.PosY = 20+10*zoom
		self.Pion = self.Canevas.create_oval(self.PosX-10,self.PosY-10,self.PosX+10,self.PosY+10,width=2,outline='black',fill=myyellow)

		self.cost = np.zeros(5,dtype=np.int)

	#cette partie consiste a implementer les foctions qui peut manager le layout de tkinter et le comportement du pion
	def restart(self):
		self.PosX = 20+10*zoom
		self.PosY = 20+10*zoom
		self.Canevas.coords(self.Pion,self.PosX -9*zoom, self.PosY -9*zoom, self.PosX +9*zoom, self.PosY +9*zoom)
		self.cost = np.zeros(5,dtype=np.int)

	def Clavier(self,event):
		touche = event.keysym
		#position actuel du robot
		nblignes = self.cases.shape[0]
		nbcolonnes = self.cases.shape[1]

		cj = round((self.PosX-30)/(20*zoom))
		li=round((self.PosY-30)/(20*zoom))

		# deplacement vers le haut
		if touche == 'Up' and li>0 and self.cases[li-1,cj,0]>0:
			l,c=self.movementUp(li,cj,nblignes,nbcolonnes)
			      
		# deplacement vers le bas
		if touche == 'Down' and li<nblignes-1 and self.cases[li+1,cj,0]>0:
			#self.PosY += zoom*20
			l,c=self.movementDown(li,cj,nblignes,nbcolonnes)
			
		# deplacement vers la droite
		if touche == 'Right' and cj< nbcolonnes-1 and self.cases[li,cj+1,0]>0:
			l,c=self.movementRight(li,cj,nblignes,nbcolonnes)
		 
		# deplacement vers la gauche
		if touche == 'Left' and cj >0 and self.cases[li,cj-1,0]>0:
			l,c=self.movementLeft(li,cj,nblignes,nbcolonnes)

		if not(l is None and c is None):
			index = int(self.cases[l,c,0])
			#print(index)
			self.cost[index]+=self.cases[l,c,1]
			self.cost[0]+=self.cases[l,c,1]
		
		self.wg.config(text=str(self.cost[1]))
		self.wb.config(text=str(self.cost[2]))
		self.wr.config(text=str(self.cost[3]))
		self.wn.config(text=str(self.cost[4]))
		self.ws.config(text='     total = '+str(self.cost[0]))

		self.Canevas.coords(self.Pion,self.PosX -9*zoom, self.PosY -9*zoom, self.PosX +9*zoom, self.PosY +9*zoom)
		#print(li,cj)


	def movementRight(self,li,cj,nblignes,nbcolonnes):
		Right_access = cj+1<nbcolonnes
		if(Right_access):
			Right_access = self.cases[li,cj+1,0]>0

		Right_Up_access = (cj+1<nbcolonnes and li>0)
		if(Right_Up_access):
			Right_Up_access = self.cases[li-1,cj+1,0]>0

		Right_Down_access = (cj+1<nbcolonnes and li+1<nblignes)
		if(Right_Down_access):
			Right_Down_access = self.cases[li+1,cj+1,0]>0

		if Right_access and Right_Up_access and Right_Down_access:
			rand = np.random.uniform(0,1)
			if rand < self.p:
				# move right
				self.PosX += zoom*20
				return li,cj+1
			else:
				if rand<(1+self.p)/2:
					# right-up
					self.PosX += zoom*20
					self.PosY -= zoom*20
					return li-1,cj+1
				else:
					# right-down
					self.PosY += zoom*20
					self.PosX += zoom*20
					return li+1,cj+1

		else:
			if Right_access and Right_Up_access:
				rand = np.random.uniform(0,1)
				if rand < (1+self.p)/2:
					#move right
					self.PosX += zoom*20
					return li,cj+1
				else:
					#move right-up
					self.PosX += zoom*20
					self.PosY -= zoom*20
					return li-1,cj+1
			else:
				if Right_access and Right_Down_access:
					rand = np.random.uniform(0,1)
					if rand < (1+self.p)/2:
						#move right
						self.PosX += zoom*20
						return li,cj+1
					else:
						#right-down
						self.PosY += zoom*20
						self.PosX += zoom*20
						return li+1,cj+1
				else:
					if Right_access:
						self.PosX += zoom*20
						return li,cj+1
	


	def movementLeft(self,li,cj,nblignes,nbcolonnes):
		Left_access = cj>0
		if(Left_access):
			Left_access = self.cases[li,cj-1,0]>0

		Left_up_access = (li>0 and cj>0)
		if(Left_up_access):
			Left_up_access = self.cases[li-1,cj-1,0]>0

		Left_down_access = (cj>0 and li+1<nblignes)
		if(Left_down_access):
			Left_down_access = self.cases[li+1,cj-1,0]>0

		if Left_access and Left_up_access and Left_down_access:
			rand = np.random.uniform(0,1)
			if rand < self.p:
				#move left
				self.PosX -= zoom*20
				return li,cj-1
			else:
				if rand<(1+self.p)/2:
					#left-up
					self.PosX -= zoom*20
					self.PosY -= zoom*20
					return li-1,cj-1
				else:
					#left-down
					self.PosX -= zoom*20
					self.PosY += zoom*20
					return li+1,cj-1

		else:
			if Left_access and Left_up_access:
				rand = np.random.uniform(0,1)
				if rand < (1+self.p)/2:
					
					self.PosX -= zoom*20
					return li,cj-1
				else:
					self.PosX -= zoom*20
					self.PosY -= zoom*20
					return li-1,cj-1
			else:
				if Left_access and Left_down_access:
					rand = np.random.uniform(0,1)
					if rand < (1+self.p)/2:
						self.PosX -= zoom*20
						return li,cj-1
					else:
						self.PosX -= zoom*20
						self.PosY += zoom*20
						return li+1,cj-1
				else:
					if Left_access:
						self.PosX -= zoom*20
						return li,cj-1



	def movementUp(self,li,cj,nblignes,nbcolonnes):
		Up_access = li>0
		if(Up_access):
			Up_access = self.cases[li-1,cj,0]>0

		Up_l_access = (cj>0 and li>0)
		if Up_l_access:
			Up_l_access = self.cases[li-1,cj-1,0]>0

		Up_r_access = (li>0 and cj+1<nbcolonnes)
		if(Up_r_access):
			Up_r_access = self.cases[li-1,cj+1,0]>0

		if Up_access and Up_l_access and Up_r_access:
			rand = np.random.uniform(0,1)
			if rand < self.p:
				self.PosY -= zoom*20
				return li-1,cj
			else:
				if rand<(1+self.p)/2:
					#up-left
					self.PosX -= zoom*20
					self.PosY -= zoom*20
					return li-1,cj-1
				else:
					#up-right
					self.PosY -= zoom*20
					self.PosX += zoom*20
					return li-1,cj+1

		else:
			if Up_access and Up_l_access:
				rand = np.random.uniform(0,1)
				if rand < (1+self.p)/2:
					# up
					self.PosY -= zoom*20
					return li-1,cj
				else:
					# up-left
					self.PosX -= zoom*20
					self.PosY -= zoom*20
					return li-1,cj-1
			else:
				if Up_access and Up_r_access:
					rand = np.random.uniform(0,1)
					if rand < (1+self.p)/2:
						#up
						self.PosY -= zoom*20
						return li-1,cj
						
					else:
						#up-right
						self.PosX += zoom*20
						self.PosY -= zoom*20
						return li-1,cj+1
				else:
					if Up_access:
						self.PosY -= zoom*20
						return li-1,cj


	
	def movementDown(self,li,cj,nblignes,nbcolonnes):
		Down_access = li+1<nblignes
		if(Down_access):
			Down_access = self.cases[li+1,cj,0]>0

		Down_left_access = (li+1<nblignes and cj>0)
		if(Down_left_access):
			Down_left_access = self.cases[li+1,cj-1,0]>0

		Down_right_access = (li+1<nblignes and cj+1<nbcolonnes)
		if(Down_right_access):
			Down_right_access = self.cases[li+1,cj+1,0]>0

		if Down_access and Down_left_access and Down_right_access:
			rand = np.random.uniform(0,1)
			if rand < self.p:
				# down
				self.PosY += zoom*20
				return li+1,cj
				
			else:
				if rand<(1+self.p)/2:
					# down-left
					self.PosX -= zoom*20
					self.PosY += zoom*20
					return li+1,cj-1
				else:
					# down-right
					self.PosY += zoom*20
					self.PosX += zoom*20
					return li+1,cj+1

		else:
			if Down_access and Down_left_access:
				rand = np.random.uniform(0,1)
				if rand < (1+self.p)/2:
					self.PosY += zoom*20
					return li+1,cj
					
				else:
					self.PosX -= zoom*20
					self.PosY += zoom*20
					return li+1,cj-1
			else:
				if Down_access and Down_right_access:
					rand = np.random.uniform(0,1)
					if rand < (1+self.p)/2:
						self.PosY += zoom*20
						return li+1,cj
						
					else:
						self.PosY += zoom*20
						self.PosX += zoom*20
						return li+1,cj+1
				else:
					if Down_access:
						self.PosY += zoom*20
						return li+1,cj



	def initialiser(self):
		'''
		ecriture du quadrillage et coloration
		'''
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
					color = int(self.cases[i,j,0])
					self.Canevas.create_text(x+zoom*(10),y+zoom*(10), text=str(int(self.cases[i,j,1])),fill=self.RGB[color],font = "Verdana "+str(int(6*zoom))+" bold")
				else:
					#draw walls
					self.Canevas.create_rectangle(x, y, x+zoom*20, y+zoom*20, fill=self.RGB[0])

		self.Canevas.focus_set()
		self.Canevas.bind('<Key>',self.Clavier)
		self.Canevas.pack(padx =5, pady =5)
		
		Button(self.root, text ='Restart', command = self.restart).pack(side=LEFT,padx=5,pady=5)
		Button(self.root, text ='Quit', command = self.root.destroy).pack(side=LEFT,padx=5,pady=5)
		w = Label(self.root, text='     Costs: ', fg=myblack,font = "Verdana "+str(int(5*zoom))+" bold")
		w.pack(side=LEFT,padx=5,pady=5)
		#cost green
		self.wg = Label(self.root, text=str(self.cost[1]),fg=mygreen,font = "Verdana "+str(int(5*zoom))+" bold")
		self.wg.pack(side=LEFT,padx=5,pady=5) 
		#cost blue
		self.wb = Label(self.root, text=str(self.cost[2]),fg=myblue,font = "Verdana "+str(int(5*zoom))+" bold")
		self.wb.pack(side=LEFT,padx=5,pady=5) 
		#cost red
		self.wr = Label(self.root, text=str(self.cost[3]),fg=myred,font = "Verdana "+str(int(5*zoom))+" bold")
		self.wr.pack(side=LEFT,padx=5,pady=5) 
		#cost noir
		self.wn = Label(self.root, text=str(self.cost[4]),fg=myblack,font = "Verdana "+str(int(5*zoom))+" bold")
		self.wn.pack(side=LEFT,padx=5,pady=5) 
		#total cost
		self.ws = Label(self.root, text='     total = '+str(self.cost[0]),fg=myblack,font = "Verdana "+str(int(5*zoom))+" bold")
		self.ws.pack(side=LEFT,padx=5,pady=5) 



		
		#position du robot
		self.Canevas.coords(self.Pion,self.PosX -9*zoom, self.PosY -9*zoom, self.PosX +9*zoom, self.PosY +9*zoom)
		self.root.mainloop()



