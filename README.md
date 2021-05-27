# discrete_choice_inverse_optimization

In this work, we propose a framework to estimate the unobservable model in a discrete-choice equilibrium using inverse optimization. We use the observed equilibrium to estimate the unknown primitives. We relax the IP to a continuous program and using duality and propose to use subgradient and perturbation method to address the problem of suboptimal integer rounding in discrete-choice equilibrium. Such happens when actions need to be taken in a finite set in the real world setting and agents have to round their optimal solution to a feasible solution. The numerical experiments demonstrate that our approach can reconcile the true parameter and have strong predictive power. 

# Numerical Experiment
## Data Generation
In this experiment, we estimated an unknown product function. We assume a prior that the production function belongs to Cobb-Douglas parametric family.
data_gen.ipynb shows how we generate observed discrete equilibria.



## LP Relaxation
In continuous_relaxation.m we relax the integer program to a continuous program for estimation.

## Subgradient Relaxation
We provide two scripts to do subgradient relaxation: subgradient.ipynb and subgradient.m in python and matlab respectively. 

## Perturbation
perturbation.m demonstrates how we use perturbation technique for estimation.
