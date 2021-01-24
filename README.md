## Projet MADI M2-Androide
### Algorithmes pour la planification dans le risque
### Introduction
Ce projet consiste à modéliser les différents problème de planification dans le risque par le processus décisionnels markoviens. Dans ce projet, on prend un environnement de grille rectangulaire dont chaque case est attribuée une couleur et un chiffre entier, représentent de différents niveaux de risque en le traverçant. Le robot est placé dedans, il pose 4 actions élémentaires pour atteindre la case cible donnée(case sud-est).
#### Environnement Pré-requis

Python(numpy,matplotlib,Tkinder)

Gurobi

#### Exemple
Ici on initialise aléatoirement un environnement, fait afficher l'interface tkinder qui nous permet de naviguer dans la grille en se dirigrant au clavier avecs les touches, à chaque bas de déplacement, un ou plusieurs compteurs seront mis à jours. La touche sur 'space' permet de simuler une politique stationnaire. Le bouton policy permet de visualiser une politique déterministe. Le problème à résoudre est passé à la classe grille comme paramètre **problem('equilibre' ou 'risque' par default)**, la méthode de résolution est déterminée par le paramètre **methode('value iteration' par default, 'prog linear')** de fontion grille.initialiser().
```Python
from fonctions import *
from env import 
# initialiser un environnement de grille
env = Env(nblignes=5,nbColones=10,pMove=1,pMur=0.2,pCouleur=[0.1,0.2,0.3,0.4])
# engendrer aléatoirement des grilles rectangulaires, retourne les couleurs et les chiffres
cases = env.reset()
# initialisation de la grille
# resolution la trajectoire de moindre risque par iteration de la valeur
g = grille(env,problem="risque")
g.initialiser(gamma=0.9,methode="value iteration")

# resolution la trajectoire de moindre risque par programmation lineaire
g = grille(env,problem="risque")
# politique mixte
g.initialiser(gamma=0.9,methode="prog lineaire")
# politique pure
# g.initialiser(gamma=0.9,methode="prog lineaire",pure=True)

# resolution la trajectoire equilibre par methode minmax
g = grille(env,problem="equilibre")
g.initialiser(gamma=0.9,methode="prog lineaire")
```
![](https://github.com/yuhanWG/MADI/blob/master/images/2b-1.png)

### Exemple2 - test-value-iteration.py
Ce fichier peut être directement executé dans le terminal, y compris l'interface de grille et la visualisation de la politique stationnaire. Dans l'exemple suivant, on va initialiser une grille de taille (10,15), la probabilité du mouvement est 0.8, le taux d'actualisation est 0.99.
```Python
# python test-value-iteration.py nblig nbcol p problem gamma
python test-value-iteration.py 10 15 0.8 risque 0.99
```
### Exemple3 - test-pl.py
Ce fichier peut être directement executé dans le terminal, qui peut tester les fonctions suivantes: 
```Python
# déterminer une trajectoire de moins risque par programmation linéaire
python test-pl.py 10 15 0.8 risque
# déterminer une trajectoire equilibre par programmation linéaire
python test-pl.py 10 15 0.8 equilibre
```
#### Contenu de l'archive
* #### codes
    - ###### env.py: classe Env, générateur d'instances de l'environnement
        - **env.reset()**: (re)initialiser aléatoirement la grille(les couleurs et les chiffres)
        - **env.step(li,cj,action)**: à partir de l'état actuel, retourner le(s) prochain(s) état(s) possibles
        probabilité de transition corresponde
        - **env.reset_reward(new_reward)**: modifier les récompenses pour de différentes couleurs, cette fonction est crée pour la question 2c
        - **env.step_back(li,cj)**: à partir de l'état actuel, chercher les états qui peuvent l'atteindre, retourner leurs coordonnées
    - ###### grille.py: classe grille, visualiser la grille en utilisant Tkinder
        - **grille.restart()**: recommencer le jeu après avoir cliqué sur le boutton 'restart'
        - **grille.visualiser()**: visualiser la politique optimale
        - **grille.clavier()**: naviguer dans la grille en se dirigrant au clavier avec les touches
        - **grille.initialiser(gamma, methode='value iteration',pure=False)**: visualiser la grille, la simulation de la politique optimale se réalise par les touches sur 'space'
    - ###### fonctions.py
        - **visu_policy(value,policy,dict_action,env.state_space)**: visualiser une politique stationnaire déterministe(déterminée par l'itération de valeur)
        - **value_iteration(env,gamma,problem="risque")**: réalisation de méthode itération de valeur. Retourner la table des valeurs et la politque
        . On etudie deux problemes dans ce projet. Le 'risque' considère que le risque correspond à chaque case est définie par
        sa couleur(question2). Le 'equilibre' considère que le coût est définie par le chiffre donnée aléatoirement à l'initialisation
        de l'environnement(question4a).
        - **dual_pl_mono(env,gamma,pure=False,problem='risque')**: réalisation du programme linéaire. Le paramètre 'pure' est par default False.
        Retourner la politique mixte et la valeur d'objectif après l'optimisation. Si pure=True, retourner une politique pure.
        - **normalise(policy)**: normalisation d'une politique
        - **minmax_policy(env, gamma)**: réalisation d'un MDP multiobjectif(MOMDP), retourner une politique mixte, et une table des valeurs pour chaque objectif. 
        - **normalise(policy)**: normalisation d'une politique
        - **get_a_policy(policy_mixte)**: a partir d'une politique mixte, retourner une politique pure
        - **simuler(env,policy,problem='risque')**: simuler une politique stationnaire, qu'elle soit déterministe ou mixte. Retourner
        la consommation totale et(ou) les consommations pour chaque critère. La définition du coût se réalise par le paramètre
        'problem'.

- ##### Fichiers .ipynb
    Les fichiers au format ipynb correspondent aux essais numériques dans ce projet qui consiste à étudier le temps de résolution
et la performance de différentes méthodes. Les figures produites dans les fichiers sont utilisées dans le rapport.
- ##### images
    Les figures produits dans les expérimentations, qui sont utilisées dans le rapport.
- ##### rapport

#### Auteurs:
Yuhan WANG - ywang1525@gmail.com
