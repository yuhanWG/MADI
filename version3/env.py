import numpy as np

max_reward = 1000

class Env():
	def __init__(self, nblignes, nbColonnes, pMove, pMur, pCouleur):
		self.cases = np.zeros((nblignes,nbColonnes,2),dtype=int)
		self.reward = np.zeros((nblignes,nbColonnes),dtype=int)
		self.nblignes = nblignes
		self.nbColonnes = nbColonnes
		self.p = pMove
		self.PMur = pMur
		self.pVert, self.pBleu, self.pRouge, self.pNoir = pCouleur
		self.DictCouleur = {"vert":1,"bleu":2,"rouge":3,"noir":4}
		self.action_space = ["up","down","left","right"]
		self.state_space = (nblignes,nbColonnes)

	
	def reset_reward(self,new_reward):
		# new_reward : dictionnaire de couleur-cout
		for i in range(self.nblignes):
			for j in range(self.nbColonnes):
				if(self.cases[i,j,0]!=0):
					c = self.cases[i,j,0]
					self.reward[i,j] = new_reward[c]
		self.reward[-1,-1]=max_reward
		#print(self.reward) 

	def reset(self):
		for i in range(self.nblignes):
			for j in range(self.nbColonnes):
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
								self.cases[i,j,0] = self.DictCouleur["rouge"]
							else:
								self.cases[i,j,0] = self.DictCouleur["noir"]

		self.cases[0,0,0]=np.random.randint(1,5)
		self.cases[0,1,0]=np.random.randint(1,5)
		self.cases[1,0,0]=np.random.randint(1,5)
		self.cases[self.nblignes-1,self.nbColonnes-1,0]=np.random.randint(1,5)
		self.cases[self.nblignes-2,self.nbColonnes-1,0]=np.random.randint(1,5)
		self.cases[self.nblignes-1,self.nbColonnes-2,0]=np.random.randint(1,5)

		self.reward = -self.cases[:,:,0]
		self.reward[-1,-1] = max_reward

		return self.cases


	def step(self,li,cj,a):
		nblignes = self.nblignes
		nbColonnes = self.nbColonnes


		if(a=="up"):
			if li==0:
				# action ilegal
				next_state = [(li,cj)]
			else:
				# action ilegal
				if self.cases[li-1,cj,0]==0:
					next_state = [(li,cj)]
				else:
					if cj>0 and cj+1<nbColonnes:
						next_state = [(li-1,cj),(li-1,cj-1),(li-1,cj-1)]
						
					else:
						if cj>0 and not(cj+1<nbColonnes):
							next_state = [(li-1,cj),(li-1,cj-1)]
							
						else:
							if not(cj>0) and cj+1<nbColonnes:
								next_state = [(li-1,cj),(li-1,cj+1)]
								
							else:
								next_state = [(li,cj)]
								

		if(a=="down"):
			if li+1==nblignes:
				next_state = [(li,cj)]
				
			else:
				if self.cases[li+1,cj,0]==0:
					next_state = [(li,cj)]
					
				else:
					if cj>0 and cj+1<nbColonnes:
						next_state = [(li+1,cj),(li+1,cj-1),(li+1,cj+1)]
					else:
						if cj>0 and not(cj+1<nbColonnes):
							next_state = [(li+1,cj),(li+1,cj-1)]
						else:
							if not(cj>0) and cj+1<nbColonnes:
								next_state = [(li+1,cj),(li+1,cj+1)]
							else:
								next_state = [(li,cj)]

		if(a=="left"):
			if cj==0:
				next_state = [(li,cj)]
			else:
				if self.cases[li,cj-1,0]==0:
					next_state = [(li,cj)]
				else:
					if li>0 and li+1<nblignes:
						next_state = [(li,cj-1),(li-1,cj-1),(li+1,cj-1)]
					else:
						if li>0 and not(li+1<nblignes):
							next_state = [(li,cj-1),(li-1,cj-1)]
						else:
							if not(li>0) and li+1<nblignes:
								next_state = [(li,cj-1),(li+1,cj-1)]
							else:
								next_state = [(li,cj)]
		
		if (a=="right"):
			if cj+1==nbColonnes:
				next_state = [(li,cj)]
			else:
				if self.cases[li,cj+1,0]==0:
					next_state = [(li,cj)]
				else:
					if li>0 and li+1<nblignes:
						next_state = [(li,cj+1),(li-1,cj+1),(li+1,cj+1)]
					else:
						if li>0 and not(li+1<nbColonnes):
							next_state = [(li,cj+1),(li-1,cj+1)]
						else:
							if not(li>0) and li+1<nblignes:
								next_state = [(li,cj+1),(li+1,cj+1)]
							else:
								next_state = [(li,cj+1)]


		
		
		color = self.cases[:,:,0]
		c = [color[s] for s in next_state]
		c = np.array(c)
		index = np.where(c!=0)[0]
		next_state = [next_state[i] for i in index]

		if(len(next_state)==1):
			proba_transition = [1]
		else:
			if len(next_state)==2:
				proba_transition = [(1+self.p)/2, (1-self.p)/2]
			else:
				proba_transition = [self.p, (1-self.p)/2, (1-self.p)/2]
		#proba_transition = np.array(proba_transition)

		return next_state,proba_transition


	def step_back(self,li,cj):

		states_add_fenetre = -np.ones((self.nblignes+2,self.nbColonnes+2))
		states_add_fenetre[1:-1,1:-1] = self.cases[:,:,0]
		#print(states_add_fenetre)

		index_x, index_y = np.where(states_add_fenetre[li-1:li+2,cj-1:cj+2]!=-1)
		index_x = index_x+li-1
		index_y = index_y+cj-1
		return np.vstack((index_x,index_y))-1