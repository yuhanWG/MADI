import numpy as np

THETA = 0.001
max_bonus = 1000

class Pdm():
	def __init__(self,cases,gamma,p):
		self.cases = cases
		self.action = ["up","down","left","right"]
		self.risque = {1:-1,2:-2,3:-3,4:-4}
		self.gamma = gamma
		self.p = p
		self.policy = np.zeros((cases.shape[0],cases.shape[1]))
		self.value = np.zeros((cases.shape[0],cases.shape[1]))


	def isTerminal(self,li,cj):
		return li+1==self.cases.shape[0] and cj+1==self.cases.shape[1]


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
							#Rs = self.risque[int(self.cases[li,cj,0])]
							for a in self.action:
								# niveau du risque condifie par la couleur(s'il y en a)
								# ensemble des successeurs en prenant a comme action
								_state,proba_transition,v_succ = self.one_step_forward(nblignes,nbColonnes,li,cj,a)
								color = self.cases[:,:,0]
								#test = [color[s] for s in _state]
								#print(li,cj,a,test)
								R = [self.risque[int(color[s])] for s in _state]
								Rs = np.sum(np.array(R)*proba_transition)
								#print(li,cj,a,R,proba_transition,Rs)
								Qs_a.append(Rs+self.gamma*np.sum(proba_transition*v_succ))
							current_values[li,cj] = max(Qs_a)

					delta = max(delta,np.abs(self.value[li,cj]-current_values[li,cj]))
							
							#print(np.abs(self.value[li,cj]-current_values[li,cj]))
			self.value = current_values
			#print(self.value[li,cj])
			round_num+=1
		
		#print(self.value)
		#determiner la policy
		for i in range(nblignes):
			for j in range(nbColonnes):
				if not (self.isTerminal(i,j)):
					if(self.cases[i,j,0]>0):
						Qs_a = []
							#Rs = self.risque[int(self.cases[i,j,0])]
						for a in self.action:

							color = self.cases[:,:,0]
							_state,proba_transition,v_succ = self.one_step_forward(nblignes,nbColonnes,i,j,a)
							R = [self.risque[int(color[s])] for s in _state]
							#print(i,j,R,proba_transition)
							Rs = np.sum(np.array(R)*proba_transition)
							Qs_a.append(Rs+self.gamma*np.sum(proba_transition*v_succ))
						#print("hello",Qs_a)
						Qs_a = np.array(Qs_a)
						self.policy[i,j] = np.argmax(Qs_a)

		return round_num,self.value,self.policy


	def one_step_forward(self,nblignes,nbColonnes,li,cj,a):

		if(a=="up"):
			if li==0:
				# action ilegal
				next_state = [(li,cj)]
				v_succ = [self.value[li,cj]]
			else:
				# action ilegal
				if self.cases[li-1,cj,0]==0:
					next_state = [(li,cj)]
					v_succ = [self.value[li,cj]]
				else:
					if cj>0 and cj+1<nbColonnes:
						next_state = [(li-1,cj),(li-1,cj-1),(li-1,cj-1)]
						v_succ = [self.value[li-1,cj],self.value[li-1,cj-1],self.value[li-1,cj+1]]
					else:
						if cj>0 and not(cj+1<nbColonnes):
							next_state = [(li-1,cj),(li-1,cj-1)]
							v_succ = [self.value[li-1,cj], self.value[li-1,cj-1]]
						else:
							if not(cj>0) and cj+1<nbColonnes:
								next_state = [(li-1,cj),(li-1,cj+1)]
								v_succ = [self.value[li-1,cj], self.value[li-1,cj+1]]
							else:
								next_state = [(li,cj)]
								v_succ = self.value[li-1,cj]

		if(a=="down"):
			if li+1==nblignes:
				next_state = [(li,cj)]
				v_succ = [self.value[li,cj]]
			else:
				if self.cases[li+1,cj,0]==0:
					next_state = [(li,cj)]
					v_succ = [self.value[li,cj]]
				else:
					if cj>0 and cj+1<nbColonnes:
						next_state = [(li+1,cj),(li+1,cj-1),(li+1,cj+1)]
						v_succ = [self.value[li+1,cj], self.value[li+1,cj-1], self.value[li+1,cj+1]]
					else:
						if cj>0 and not(cj+1<nbColonnes):
							next_state = [(li+1,cj),(li+1,cj-1)]
							v_succ = [self.value[li+1,cj], self.value[li+1,cj-1]]
						else:
							if not(cj>0) and cj+1<nbColonnes:
								next_state = [(li+1,cj),(li+1,cj+1)]
								v_succ = [self.value[li+1,cj], self.value[li+1,cj+1]]
							else:
								next_state = [(li,cj)]
								v_succ = self.value[li+1,cj]

		if(a=="left"):
			if cj==0:
				next_state = [(li,cj)]
				v_succ = [self.value[li,cj]]
			else:
				if self.cases[li,cj-1,0]==0:
					next_state = [(li,cj)]
					v_succ = [self.value[li,cj]]
				else:
					if li>0 and li+1<nblignes:
						next_state = [(li,cj-1),(li-1,cj-1),(li+1,cj-1)]
						v_succ = [self.value[li,cj-1], self.value[li-1,cj-1], self.value[li+1,cj-1]]
					else:
						if li>0 and not(li+1<nblignes):
							next_state = [(li,cj-1),(li-1,cj-1)]
							v_succ = [self.value[li,cj-1],self.value[li-1,cj-1]]
						else:
							if not(li>0) and li+1<nblignes:
								next_state = [(li,cj-1),(li+1,cj-1)]
								v_succ = [self.value[li,cj-1], self.value[li+1,cj-1]]
							else:
								next_state = [(li,cj)]
								v_succ = [self.value[li,cj-1]]
		
		if (a=="right"):
			if cj+1==nbColonnes:
				next_state = [(li,cj)]
				v_succ = [self.value[li,cj]]
			else:
				if self.cases[li,cj+1,0]==0:
					next_state = [(li,cj)]
					v_succ = [self.value[li,cj]]
				else:
					if li>0 and li+1<nblignes:
						next_state = [(li,cj+1),(li-1,cj+1),(li+1,cj+1)]
						v_succ = [self.value[li,cj+1], self.value[li-1,cj+1], self.value[li+1,cj+1]]
					else:
						if li>0 and not(li+1<nbColonnes):
							next_state = [(li,cj+1),(li-1,cj+1)]
							v_succ = [self.value[li,cj+1],self.value[li-1,cj+1]]
						else:
							if not(li>0) and li+1<nblignes:
								next_state = [(li,cj+1),(li+1,cj+1)]
								v_succ = [self.value[li,cj+1], self.value[li+1,cj+1]]
							else:
								next_state = [(li,cj+1)]
								v_succ = [self.value[li,cj+1]]


		
		
		color = self.cases[:,:,0]
		c = [color[s] for s in next_state]
		c = np.array(c)
		index = np.where(c!=0)[0]
		next_state = [next_state[i] for i in index]


		v_succ = np.array(v_succ)
		v_succ = v_succ[index]
		#print(v_succ)

		if(len(v_succ)==1):
			proba_transition = 1
		else:
			if len(v_succ)==2:
				proba_transition = [(1+self.p)/2, (1-self.p)/2]
			else:
				proba_transition = [self.p, (1-self.p)/2, (1-self.p)/2]
		proba_transition = np.array(proba_transition)

		return next_state,proba_transition, v_succ



