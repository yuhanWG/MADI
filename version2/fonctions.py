import numpy as np
from tkinter import *
import matplotlib
import matplotlib.pyplot as plt

def visu_policy(value,policy, dict_action,cases):
	fig, ax = plt.subplots()
	im = ax.imshow(value)
	nblignes = value.shape[0]
	nbColones = value.shape[1]
	for li in range(nblignes):
		for cj in range(nbColones):
			if li==nblignes-1 and cj==nbColones-1:
				text = ax.text(li,cj,"G",ha="center",va="center")
			else:
				if cases[li,cj,0]!=0:
					text = ax.text(cj,li,str(dict_action[policy[li,cj]]),ha="center",va="center")
	plt.show()