from tkinter import *


class Tkmdp():
	def __init__(self,p):
		self.root = Tk()
		self.root.title = 'MDP'
		self.p = p
		self.zoom = 2



	#cette partie consiste a manager le layout de tkinter
	def visualiser(self,cases):
		nblignes = cases.shape[0]
		nbcolonnes = cases.shape[1]
		Largeur = self.zoom*20*nbcolonnes+40
		Hauteur = self.zoom*20*nblignes+40
		#print("tkinter test",self.p)



