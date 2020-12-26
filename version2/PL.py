from generateur import *
import numpy as np
from mdp import *
import gurobipy as gp

max_bonus = 1000
class  pl():
	def __init__(self,cases,p,gamma):
		self.cases = cases
		self.p = p
		self.gamma = gamma
		self.actions = ["up","down","left","right"]


	
	def one_step_backword(self,li,cj,states_add_fenetre):
		possible_last_state = states_add_fenetre[li-1:li+2,cj-1:cj+2]
		index_x, index_y = np.where(possible_last_state!=-1)
		# return normal coordinate
		return np.vstack((index_x,index_y))-1

	def one_step_forward(self,li,cj,a):
		nblignes = self.cases.shape[0]
		nbColonnes = self.cases.shape[1]

		
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
								

		states = self.cases[:,:,0]
		c = [states[s] for s in next_state]
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



	def dual_pl_mono(self):
		nblignes = self.cases.shape[0]
		nbColonnes = self.cases.shape[1]
		states = self.cases[:,:,0]

		states_add_fenetre = -np.ones((nblignes+2,nbColonnes+2))
		states_add_fenetre[1:-1,1:-1] = states

		print(states_add_fenetre)

		m = gp.Model()
		m.setParam("OutputFlag",False)
		x_s_a = m.addVars(np.arange(nblignes),np.arange(nbColonnes),self.actions)


		for li in range(nblignes):
			for cj in range(nbColonnes):
				# s'il n'est pas une mur
				#print(li,cj)
				if states[li,cj]>0:

					expr1 = gp.LinExpr()
					for a in self.actions:
						# partie1 equation
						expr1.add(x_s_a[(li,cj,a)])

					
					last_state = self.one_step_backword(li+1,cj+1,states_add_fenetre)
					#print(li,cj,last_state)
					nb_last_state = last_state.shape[1]


					expr2 = gp.LinExpr()
					for i in range(nb_last_state):
						_s_x,_s_y = last_state[:,i]
						# la mur ne peut pas considere comme un etat
						if states[_s_x,_s_y]>0:
							for a in self.actions:
								next_state,proba_transition = self.one_step_forward(_s_x,_s_y,a)
								if (li,cj) in next_state:
									index = next_state.index((li,cj))
									'''
									print("action",a)
									print("index",index)
									print("proba_t",proba_transition)
									'''
									proba = proba_transition[index]
									expr1.add(x_s_a[(_s_x,_s_y,a)],proba)

					m.addConstr(expr1-self.gamma*expr2==1)

								




