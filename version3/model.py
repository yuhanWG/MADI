import numpy as np
from copy import deepcopy
import matplotlib.pyplot as plt


class Particle:
    def __init__(self, n_features, max_n_causes):
        self.n_features = n_features
        self.max_n_causes = max_n_causes
        self.partition = []
        self.N_causes = np.zeros(max_n_causes, dtype=np.int)
        self.N_features = np.ones((self.n_features, 2, max_n_causes))
        self.next_cause = 0
        self.prior = np.zeros(self.max_n_causes)
        self.posterior = np.zeros(self.max_n_causes)
        self.weight = 0.
        self.r = np.zeros(self.max_n_causes)
        
    def compute_prior(self, alpha):
        self.prior[:self.next_cause] = self.N_causes[:self.next_cause]
        if self.next_cause < self.max_n_causes:
            self.prior[self.next_cause] = alpha
        self.prior /= np.sum(self.prior)

    def get_likelihood(self, features, conditional_only=False):
        probs = np.zeros(self.max_n_causes)
        for k in range(self.max_n_causes):
            probs[k] = 1
            for i in range(1 if conditional_only else 0, self.n_features):
                probs[k] *= self.N_features[i, features[i], k] / np.sum(self.N_features[i, :, k])
        return probs

    def compute_stats(self, alpha, features):
        self.compute_prior(alpha)
        self.posterior[:] = self.prior * self.get_likelihood(features)
        self.weight = np.sum(self.posterior)
        self.posterior /= self.weight
        self.r[:] = self.prior * self.get_likelihood(features, conditional_only=True)
        self.r /= np.sum(self.r)
        self.US_prob = 0.
        for k in range(self.max_n_causes):
            self.US_prob += self.r[k] * self.N_features[0, 1, k] / np.sum(self.N_features[0, :, k])
        
    def update(self, features):
        new_cause = np.random.choice(self.max_n_causes, p=self.posterior)
        self.partition.append(new_cause)
        self.N_causes[new_cause] += 1
        self.N_features[:, features, new_cause] += 1
        if new_cause == self.next_cause:
            self.next_cause += 1



def infer(features, n_features, max_n_causes, n_particles, alpha):
    particles = [Particle(n_features, max_n_causes) for i in range(n_particles)]
    US_probs = []
    ###
    cause_probs_all = np.zeros((max_n_causes,len(features)))

    first_cause_probs = []
    for t in range(len(features)):
        US_prob = 0.
        first_cause_prob = 0.
        for l in range(n_particles):
            particles[l].compute_stats(alpha, features[t])
            US_prob += particles[l].US_prob
            first_cause_prob += particles[l].posterior[0]
            ###
            for c in range(max_n_causes):
                cause_probs_all[c,t] += particles[l].posterior[c]
        
        US_prob /= n_particles
        first_cause_prob /= n_particles
        US_probs.append(US_prob)
        first_cause_probs.append(first_cause_prob)
        ###
        cause_probs_all /= n_particles
        
        particle_distribution = np.array([particles[l].weight for l in range(n_particles)])
        particle_distribution /= np.sum(particle_distribution)
        new_particles = []
        for l in range(n_particles):
            index = np.random.choice(range(n_particles), p=particle_distribution)
            new_particle = deepcopy(particles[index])
            new_particle.update(features[t])
            new_particles.append(new_particle)
        particles = new_particles
    return particles, US_probs, first_cause_probs,cause_probs_all


