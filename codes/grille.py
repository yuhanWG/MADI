from tkinter import *
import numpy as np
from fonctions import *


myyellow = "#F9FB70"
mywhite = "#FFFFFF"
myblack = "#2D2B2B"
myred = "#D20B18"
mygreen = "#25A531"
myblue = "#0B79F7"
zoom = 2

RGB=["#5E5E64","#25A531","#0B79F7","#D20B18","#2D2B2B"]


class grille():
	"""docstring for grille"""

	def __init__(self, env,problem):
		self.env = env
		self.problem = problem
		self.policy = np.zeros(env.state_space)
		self.root = Tk()
		self.Largeur = zoom*20*env.cases.shape[1]+40
		self.Hauteur = zoom*20*env.cases.shape[0]+40
		self.Canevas = Canvas(self.root, width = self.Largeur, height=self.Hauteur, bg=mywhite)
		self.PosX = 20+10*zoom
		self.PosY = 20+10*zoom
		self.Pion = self.Canevas.create_oval(self.PosX-10,self.PosY-10,self.PosX+10,self.PosY+10,width=2,outline='black',fill=myyellow)

		self.cost = np.zeros(5,dtype=np.int)


	def restart(self):
		self.PosX = 20+10*zoom
		self.PosY = 20+10*zoom
		self.Canevas.coords(self.Pion,self.PosX -9*zoom, self.PosY -9*zoom, self.PosX +9*zoom, self.PosY +9*zoom)
		self.cost = np.zeros(5,dtype=np.int)


	def Clavier(self,event):
		touche = event.keysym
		#position actuel du robot
		nblignes,nbcolonnes = self.env.state_space
		cases = self.env.cases

		cj = round((self.PosX-30)/(20*zoom))
		li=round((self.PosY-30)/(20*zoom))

		if li==nblignes-1 and cj==nbcolonnes-1:
			l=li
			c=cj
		else:

			if touche=="Up":
				next_state,proba=self.env.step(li,cj,"up")
			if touche=="Down":
				next_state,proba=self.env.step(li,cj,"down")
			if touche=="Left":
				next_state,proba=self.env.step(li,cj,"left")
			if touche=="Right":
				next_state,proba=self.env.step(li,cj,"right")
			if touche=="space":
				#print("hello")
				if len(self.policy.shape)==2:
					#deterministe
					mov = int(self.policy[li,cj])
					a = self.env.action_space[mov]
					next_state,proba=self.env.step(li,cj,a)
				else:
					# mixte
					pUp,pD,pL,pR = self.policy[li,cj,:]
					rand = np.random.uniform(0,1)
					while(rand==0):
						rand = np.random.uniform(0,1)
					if rand<=pUp:
						next_state,proba=self.env.step(li,cj,"up")
					else:
						if rand<=pUp+pD:
							next_state,proba=self.env.step(li,cj,"down")
						else:
							if rand<=pUp+pD+pL:
								next_state,proba=self.env.step(li,cj,"left")
							else:
								next_state,proba=self.env.step(li,cj,"right")
					
					

			#print(next_state,proba)
			if len(proba)==1:
				#print(next_state)
				l,c=next_state[0]
			else:
				rand = np.random.uniform(0,1)
				if len(proba)==2:
					if rand<=proba[0]:
						l,c=next_state[0]
					else:
						l,c=next_state[1]
				else:
					# len=3
					if rand<=proba[0]:
						l,c=next_state[0]
					else:
						if proba[0]<rand and rand<=proba[0]+proba[1]:
							l,c=next_state[1]
						else:
							l,c=next_state[2]

		# change position du pion:
		if l>li:
			self.PosY += zoom*20
		else:
			if l<li:
				self.PosY -= zoom*20

		if c>cj:
			self.PosX += zoom*20
		else:
			if c<cj:
				self.PosX -= zoom*20

		index = cases[l,c,0]
		if not(l==nblignes-1 and c==nbcolonnes-1):
			#if not self.visu_chiffre:
			# modification 01/20
			if self.problem=="risque":
				self.cost[index] -= self.env.reward[l,c]
				self.cost[0] -= self.env.reward[l,c]
			else:
				self.cost[index] += cases[l,c,1]
				self.cost[0]+= cases[l,c,1]

		self.wg.config(text=str(self.cost[1]))
		self.wb.config(text=str(self.cost[2]))
		self.wr.config(text=str(self.cost[3]))
		self.wn.config(text=str(self.cost[4]))
		self.ws.config(text='     total = '+str(self.cost[0]))

		self.Canevas.coords(self.Pion,self.PosX -9*zoom, self.PosY -9*zoom, self.PosX +9*zoom, self.PosY +9*zoom)

	def visualiser(self):
		if len(self.policy.shape)==2:
			visu_policy_plt(self.policy,self.env)
		else:
			p = get_a_policy(self.policy)
			visu_policy_plt(p,self.env)


	def initialiser(self,gamma,methode="value iteration",pure=False):
		'''
		ecriture du quadrillage et coloration
		'''
		nblignes, nbcolonnes = self.env.state_space
		cases = self.env.cases

		policy = np.zeros((nblignes,nbcolonnes))
		if self.problem=="risque":
			if methode == "value iteration":
				#nbite,value,policy = value_iteration(self.env,gamma)
				#modification 01/20
				nbite,value,policy = value_iteration(self.env,gamma,problem="risque")
				self.policy = policy

			else:
				if methode == "programma lineaire":
					policy,valObj=dual_pl_mono(self.env,gamma,pure)
					self.policy = normalise(policy)
		else:
			if self.problem=="equilibre":
			# problem is equilibre
				if methode == "value iteration":
					#nbite,value,policy = value_iteration(self.env,gamma)
					#modification 01/20
					nbite,value,policy = value_iteration(self.env,gamma,problem="equilibre")
					self.policy = policy

				else:
					if methode == "programma lineaire":
						#policy,valObj=dual_pl_mono(self.env,gamma)
						policy,valObj = minmax_policy(self.env,gamma)
						self.policy = normalise(policy)
			else:
				raise Exception("Le probleme n'est pas inclus!")
		

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
				if cases[i,j,0]>0:
					color = int(cases[i,j,0])
					#if(self.visu_chiffre):
					#modification 01/20
					if self.problem=="equilibre":
						self.Canevas.create_text(x+zoom*(10),y+zoom*(10), text=str(cases[i,j,1]),fill=RGB[color],font = "Verdana "+str(int(6*zoom))+" bold")
					else:

						self.Canevas.create_oval(x+zoom*5,y+zoom*5,x+zoom*10,y+zoom*10,width=1,outline=RGB[color],fill=RGB[color])
						#self.Canevas.create_text(x+zoom*(10),y+zoom*(10), text=str(cases[i,j,1]),fill=RGB[color],font = "Verdana "+str(int(6*zoom))+" bold")

				else:
					#draw walls
					self.Canevas.create_rectangle(x, y, x+zoom*20, y+zoom*20, fill=RGB[0])

		self.Canevas.focus_set()
		self.Canevas.bind('<Key>',self.Clavier)
		self.Canevas.pack(padx =5, pady =5)
		
		Button(self.root, text ='Restart', command = self.restart).pack(side=LEFT,padx=5,pady=5)
		Button(self.root, text ='Quit', command = self.root.destroy).pack(side=LEFT,padx=5,pady=5)
		Button(self.root,text="Policy",command = self.visualiser).pack(side=LEFT,padx=5,pady=5)

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


			
			

		
