import numpy as np

THETA = 0.001
max_bonus = 1000

class pdm():
	"""docstring for pdm"""

	def __init__(self,cases,gamma,p):
		self.cases = cases
		self.risque = {1:-1,2:-2,3:-3,4:-4}
		self.value = np.zeros((cases.shape[0],cases.shape[1]))
		self.action = ["up","down","left","right"]
		self.gamma = gamma
		self.p = p
		self.policy = np.zeros((cases.shape[0],cases.shape[1]))


	def isTerminal(self,li,cj):
		'''
		retourner true si l'etat courant est un etat fini
		l'etat fini n'a pas de recompense a l'avenir
		l'etat fini n'a pas de l'action utilisable
		on se boucle dans l'etat fini
		'''
		return li+1==self.cases.shape[0] and cj+1==self.cases.shape[1]

	def visualiser_policy(self):
		return 0



	
	def value_iteration(self):
		round_num = 0
		nblignes = self.cases.shape[0]
		nbColonnes = self.cases.shape[1]
		delta = 1
		self.value[nblignes-1,nbColonnes-1]=max_bonus

		#theta = max{|new_value-old value|}
		while delta>THETA:
			#print('value iteration'+str(round_num))
			current_values = self.value.copy()
			#print(current_values[nblignes-1,nbColonnes-1])
			#self.value = np.zeros((nblignes,nbColonnes))
			delta = 0
			for li in range(nblignes):
				for cj in range(nbColonnes):
					# cette case n'est pas la case terminal
					if not(self.isTerminal(li,cj)):
						# si cette case n'est pas une mur
						if(self.cases[li,cj,0]>0):
							Qs_a = []
							Rs = self.risque[int(self.cases[li,cj,0])]
							for a in self.action:
								# niveau du risque condifie par la couleur(s'il y en a)
								# ensemble des successeurs en prenant a comme action
								proba_transition,v_succ = self.one_step_forward(nblignes,nbColonnes,li,cj,a)
								Qs_a.append(Rs+self.gamma*np.sum(proba_transition*v_succ))

							current_values[li,cj] = max(Qs_a)

					delta = max(delta,np.abs(self.value[li,cj]-current_values[li,cj]))
							
							#print(np.abs(self.value[li,cj]-current_values[li,cj]))
			self.value = current_values
			#print(self.value[li,cj])
			round_num+=1
		
		#determiner la policy
		for i in range(nblignes):
			for j in range(nbColonnes):
				if(self.cases[i,j,0]>0):
					Qs_a = []
					if i==nblignes-1 and j==nbColonnes-1:
						Rs = max_bonus
					else:
						Rs = self.risque[int(self.cases[i,j,0])]
					for a in self.action:
						proba_transition,v_succ = self.one_step_forward(nblignes,nbColonnes,i,j,a)
						Qs_a.append(Rs+self.gamma*np.sum(proba_transition*v_succ))

					Qs_a = np.array(Qs_a)
					self.policy[i,j] = np.argmax(Qs_a)

		return self.policy



	def one_step_forward(self,nblignes,nbColonnes,li,cj,a):
		'''
		Etant donnee les cordonnes d'une case(i,j) et une action a,
		retourner ensemble des Vt-1 des successeurs possibles de cette case
		'''

		if(a=="up"):
			if li==0:
				# action ilegal
				v_succ = [self.value[li,cj]]
			else:
				# action ilegal
				if self.cases[li-1,cj,0]==0:
					v_succ = [self.value[li,cj]]
				else:
					if cj>0 and cj+1<nbColonnes:
						v_succ = [self.value[li-1,cj],self.value[li-1,cj-1],self.value[li-1,cj+1]]
					else:
						if cj>0 and not(cj+1<nbColonnes):
							v_succ = [self.value[li-1,cj], self.value[li-1,cj-1]]
						else:
							if not(cj>0) and cj+1<nbColonnes:
								v_succ = [self.value[li-1,cj], self.value[li-1,cj+1]]
							else:
								v_succ = self.value[li-1,cj]

		if(a=="down"):
			if li+1==nblignes:
				v_succ = [self.value[li,cj]]
			else:
				if self.cases[li+1,cj,0]==0:
					v_succ = [self.value[li,cj]]
				else:
					if cj>0 and cj+1<nbColonnes:
						v_succ = [self.value[li+1,cj], self.value[li+1,cj-1], self.value[li+1,cj+1]]
					else:
						if cj>0 and not(cj+1<nbColonnes):
							v_succ = [self.value[li+1,cj], self.value[li+1,cj-1]]
						else:
							if not(cj>0) and cj+1<nbColonnes:
								v_succ = [self.value[li+1,cj], self.value[li+1,cj+1]]
							else:
								v_succ = self.value[li+1,cj]

		if(a=="left"):
			if cj==0:
				v_succ = [self.value[li,cj]]
			else:
				if self.cases[li,cj-1,0]==0:
					v_succ = [self.value[li,cj]]
				else:
					if li>0 and li+1<nblignes:
						v_succ = [self.value[li,cj-1], self.value[li-1,cj-1], self.value[li+1,cj-1]]
					else:
						if li>0 and not(li+1<nblignes):
							v_succ = [self.value[li,cj-1],self.value[li-1,cj-1]]
						else:
							if not(li>0) and li+1<nblignes:
								v_succ = [self.value[li,cj-1], self.value[li+1,cj-1]]
							else:
								v_succ = [self.value[li,cj-1]]
		
		if (a=="right"):
			if cj+1==nbColonnes:
				v_succ = [self.value[li,cj]]
			else:
				if self.cases[li,cj+1,0]==0:
					v_succ = [self.value[li,cj]]
				else:
					if li>0 and li+1<nblignes:
						v_succ = [self.value[li,cj+1], self.value[li-1,cj+1], self.value[li+1,cj+1]]
					else:
						if li>0 and not(li+1<nbColonnes):
							v_succ = [self.value[li,cj+1],self.value[li-1,cj+1]]
						else:
							if not(li>0) and li+1<nblignes:
								v_succ = [self.value[li,cj+1], self.value[li+1,cj+1]]
							else:
								v_succ = [self.value[li,cj+1]]


		
		
		v_succ = np.array(v_succ)
		#print(v_succ)

		if(len(v_succ)==1):
			proba_transition = 1
		else:
			if len(v_succ)==2:
				proba_transition = [(1+self.p)/2, (1-self.p)/2]
			else:
				proba_transition = [self.p, (1-self.p)/2, (1-self.p)/2]
		proba_transition = np.array(proba_transition)

		return proba_transition, v_succ




