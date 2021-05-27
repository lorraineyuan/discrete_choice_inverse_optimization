# discrete_choice_inverse_optimization

In this work, we propose a framework to estimate the unobservable model in a discrete-choice equilibrium using inverse optimization. We use the observed equilibrium to estimate the unknown primitives. We relax the IP to a continuous program and using duality and propose to use subgradient and perturbation method to address the problem of suboptimal integer rounding in discrete-choice equilibrium. Such happens when actions need to be taken in a finite set in the real world setting and agents have to round their optimal solution to a feasible solution. The numerical experiments demonstrate that our approach can reconcile the true parameter and have strong predictive power. 

# Numerical Experiment
## Data Generation
In this experiment, we estimate an unknown production function. We assume a priori that the production function belongs to Cobb-Douglas  parametric family indexed by 
$\theta$


$\theta=(a,b)\in \Theta\equiv \{(a,b): a,b>0 \text{ and } a+b=1 \}$: $U=2K^{a}L^{b}$\ where $a$ and $b$ denote the output elasticities of capital and labor, respectively. Consider a firm deciding the amount of capital and labor, $K$ and $L$ for production investment, in order to maximize the output $U$ subject to the budget constraint $p_{1}K+p_{2}L\le w$. We seek to estimate $\theta=(a,b)$ such that the data $(K_{j},L_{j},w_{j})$ for $j=1,...,N$ correspond approximately to Producer's Equilibrium. 
Table \ref{table:1} summarizes base case parameter values throughout the experiment.

\begin{table}[ht]
    \caption{Base Case Parameters}
    \centering
    \begin{tabular}{c c c c c}
    \hline\hline
    $p_1$ & $p_2$ & $a$ & $b$ & $w$ \\
    \hline
    2.5 & 3.5 & 0.35 & 0.65 & Normal distribution $N(15,5)$ \\
    \hline
    \end{tabular}
    \label{table:1}
\end{table}
