<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#sec-1">1. Reasoning Under Uncertainty</a></li>
<li><a href="#sec-2">2. Probabilistic Reasoning</a>
<ul>
<li><a href="#sec-2-1">2.1. Probabilities</a>
<ul>
<li><a href="#sec-2-1-1">2.1.1. Definitions</a></li>
<li><a href="#sec-2-1-2">2.1.2. Law of total probability</a></li>
<li><a href="#sec-2-1-3">2.1.3. Conditional Probability</a></li>
<li><a href="#sec-2-1-4">2.1.4. Bayes Rule</a></li>
<li><a href="#sec-2-1-5">2.1.5. Chain rule</a></li>
</ul>
</li>
<li><a href="#sec-2-2">2.2. Reasoning</a>
<ul>
<li><a href="#sec-2-2-1">2.2.1. Inference</a></li>
<li><a href="#sec-2-2-2">2.2.2. Independence</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#sec-3">3. Bayesian networks</a>
<ul>
<li><a href="#sec-3-1">3.1. Conditional Independence</a></li>
<li><a href="#sec-3-2">3.2. Definition of a Bayesian Network</a></li>
<li><a href="#sec-3-3">3.3. Solving Bayesian Networks</a>
<ul>
<li><a href="#sec-3-3-1">3.3.1. Problem</a></li>
</ul>
</li>
</ul>
</li>
<li><a href="#sec-4">4. Markov Models</a>
<ul>
<li><a href="#sec-4-1">4.1. Markov Chains</a></li>
<li><a href="#sec-4-2">4.2. Hidden Markov Model (HMM)</a></li>
<li><a href="#sec-4-3">4.3. Markov Decision Processes (MDP)</a>
<ul>
<li><a href="#sec-4-3-1">4.3.1. Definition</a></li>
<li><a href="#sec-4-3-2">4.3.2. Policies</a></li>
<li><a href="#sec-4-3-3">4.3.3. Cost Models</a></li>
<li><a href="#sec-4-3-4">4.3.4. Expected Value of a State</a></li>
<li><a href="#sec-4-3-5">4.3.5. Bellman Equation (Deterministic)</a></li>
<li><a href="#sec-4-3-6">4.3.6. Bellman Equation (For MDPs)</a></li>
<li><a href="#sec-4-3-7">4.3.7. Optimal Policy</a></li>
</ul>
</li>
<li><a href="#sec-4-4">4.4. Examples</a>
<ul>
<li><a href="#sec-4-4-1">4.4.1. Bayesian Networks</a></li>
</ul>
</li>
</ul>
</li>
</ul>
</div>
</div>


# Reasoning Under Uncertainty<a id="sec-1" name="sec-1"></a>

[Bayesian Slides](ai_materials/slides/midterm2/bayesian-slides.pdf)

# Probabilistic Reasoning<a id="sec-2" name="sec-2"></a>

## Probabilities<a id="sec-2-1" name="sec-2-1"></a>

[Bayesian Slides Probability](ai_materials/slides/midterm2/bayesian-slides.pdf#page=11)

### Definitions<a id="sec-2-1-1" name="sec-2-1-1"></a>

1.  Basics

    -   **Probility** is the proportion of times something is true,
    
    or a degree of belief in something
    
    -   Probabilities range in value from **0** to **1**.
    
    -   A **random variable** can take on values on a given **domain**.
    
    -   Since the value of the random variable is unknown, we assign a **probability** to each value.
        -   This set of probabilities defines a **probability distribution**.
    
    -   The **sample space** is the domain of a random variable.
    
    -   An **atomic event** is a possible situation.
    
    -   A **[joint probability distribution](ai_materials/slides/midterm2/bayesian-slides.pdf#page=24)** is the vector distribution of 
        several different random variables.
        -   The distribution itself is `P(X, Y, Ø)`
        
        -   The atomic situation is `P(X = 1, Y = 2, Ø = 3)`, which reads
            "X = 1 AND Y = 2 AND Ø"
    
    -   An **a priori** or **unconditional** does not depend on any condition

### Law of total probability<a id="sec-2-1-2" name="sec-2-1-2"></a>

    P(B) =  ∑P(B,Ai) over all possible Ai 
         =  ∑P(B|Ai)P(Ai) over all possible Ai

### [Conditional Probability](ai_materials/slides/midterm2/bayesian-slides.pdf#page=35)<a id="sec-2-1-3" name="sec-2-1-3"></a>

    P(A|B) =  P(A, B) / P(B) if P(B) =/= 0

Intuitively, `A | B` exists in the world of B: so `P(B) = 1` in this world.

Thus, the probability of the intersection `P(A, B)` (read A **and** B) must be 
scaled to the size of the whole reality, which is `P(B)`.

TODO A picture would be nice.

### [Bayes Rule](ai_materials/slides/midterm2/bayesian-slides.pdf#page=35)<a id="sec-2-1-4" name="sec-2-1-4"></a>

    P(A|B) * P(B) = P(B|A) * P(A)

Note: There's an *alpha* trick

### [Chain rule](ai_materials/slides/midterm2/bayesian-slides.pdf#page=37)<a id="sec-2-1-5" name="sec-2-1-5"></a>

The goal is to compute **joint probabilites** using **conditional probabilities**

    P(X1, ..., Xn) = P(Xn | X1, ..., Xn-1) * P(X1, ..., Xn-1)

> **IMPORTANT NOTE** This is a simplfication:
`P ( A | B ) * P ( B ) = P ( A, B )` *by definition*

## Reasoning<a id="sec-2-2" name="sec-2-2"></a>

### Inference<a id="sec-2-2-1" name="sec-2-2-1"></a>

> **Goal**: given evidence, compute probability of events

Inference tasks                                                  
-   compute **posterior distribution** given evidence

> **Ex**: Given the observation `( o = door )`, what is the probability
that the robot is at position `X`. `P(X | o = door) = ?`

-   **choose an action** to **achieve a high reward** given some evidence
-   Best **expected utility**

    ∑ ( P(Output = i | Action = aj, evidence) 
       x ExpectedUtility(Output = i) )
    // over all possible outputs

-   **classification**

Given a series of observations, aggregate the chance they are a certain class.

> **Ex**: Given client data, will they pay the mortage correctly?

Uses **Naïve Bayes**, which is `argmax P(Class=c | o)`.

-   **diagnosis**

> **Ex**: probability of illness given result of analysis ( or symptoms )

### Independence<a id="sec-2-2-2" name="sec-2-2-2"></a>

`A` and `B` are **independent** iff `P(A, B) = P(A) * P(B)`

Which implies that `P(A | B) = P(A)`

> Independence is good. It **reduces** the size of the probability distribution.
(M \* N) becomes (M + N)

Further references: *AI: A Modern Approach* by Norvig

# Bayesian networks<a id="sec-3" name="sec-3"></a>

## [Conditional Independence](ai_materials/slides/midterm2/bayesian-networks-slides.pdf#page=8)<a id="sec-3-1" name="sec-3-1"></a>

`A` and `B` are **conditionally independent** *given* `C` iff:

    P ( A | B, C ) = P ( A | C )

Equivalently:

    P ( A, B | C ) = P ( A | C ) * P ( B | C)

Conditional independence helps reduce the number of parameters

In a graph, any two nodes not connected by an edge are conditionally independent

## [Definition of a Bayesian Network](ai_materials/slides/midterm2/bayesian-networks-slides.pdf#page=14)<a id="sec-3-2" name="sec-3-2"></a>

-   A set of **nodes** representing random variables
-   A set of **edges** X -> Y means Y depends on X
-   There are *no cycles*

Every node has a **Conditional Probability Table (CPT)** that defines the effects of its parents

~P ( Node | Parents ( Node ) )\*\*

    P ( X1, X2, ..., Xn ) = PRODUCT { P ( Xn | X1, X2, ..., Xn-1 ) }
                          = PRODUCT { P ( Xn | Parents ( Xn )    ) }

## Solving Bayesian Networks<a id="sec-3-3" name="sec-3-3"></a>

### Problem<a id="sec-3-3-1" name="sec-3-3-1"></a>

Given a Bayesian network, with the corresponding *Conditional Probability Tables*, 
and a desired **query** usually of the form `P ( A, B | C )`, compute the 

# Markov Models<a id="sec-4" name="sec-4"></a>

We want to add the notions of **time** and **actions**.

The various approaches are categorize by whether they include actions or not,
and by whether the model presumes global knowledge or not.

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="left" />

<col  class="left" />

<col  class="left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="left">actions</th>
<th scope="col" class="left">full observability</th>
<th scope="col" class="left">partial observability</th>
</tr>
</thead>

<tbody>
<tr>
<td class="left">no</td>
<td class="left">Markov Chains</td>
<td class="left">Hidden Markov Model (HMM)</td>
</tr>


<tr>
<td class="left">yes</td>
<td class="left">Markov Decision Process (MDP)</td>
<td class="left">POMDP (SLAM)</td>
</tr>
</tbody>
</table>

## Markov Chains<a id="sec-4-1" name="sec-4-1"></a>

Time dependent chain-structured bayesian network. Can predict into the future by 
reapplying the transition rule.

1.  Define *a priori* `P (X0)`

2.  Define `P ( Xn | Xn-1 )`  = *Transition probability*

> **Markov Property**: The past and future are independent given the present.

TODO example Markov Chain problem with notation.

## Hidden Markov Model (HMM)<a id="sec-4-2" name="sec-4-2"></a>

The Hidden Markov Model introduces *partial observations*, such as the 
current sensor readings of a robot.

> TODO this one is 3 points on the exam!

> **Independence Properties**:
> - Markov property
> - the current observation is independent of everything else given the current state

TODO [Examples of HMM](ai_materials/slides/midterm2/mdp-slides.pdf#page=27)

## Markov Decision Processes (MDP)<a id="sec-4-3" name="sec-4-3"></a>

-   In HMM, passively observed/localized the robot. In MDP, we choose actions.

-   We must select actions to *maximize reward over time*.

-   Decisions are based on *full observations* (complete state is known)

### Definition<a id="sec-4-3-1" name="sec-4-3-1"></a>

**MDP**: *`< S, A, T, R >`*
-   S: set of states
-   A: set of actions
-   T: set of transitions: `T(s, a, s') = P( s' | s, a )`
-   R: reward function (or cost function) = `R(s, a)`

### Policies<a id="sec-4-3-2" name="sec-4-3-2"></a>

Task: choose a sequence of actions, not just one action.

> A **policy** is a probabilistic plan that maps **states** to **actions** that have
an uncertain effect.

### Cost Models<a id="sec-4-3-3" name="sec-4-3-3"></a>

-   **Deterministic**:  `c(a) + costToEnter(s')`
-   **Stochastic**: `c(a) + ∑P(s' | s, a) x costToEnter(s')` over all possible states reached by this action

### Expected Value of a State<a id="sec-4-3-4" name="sec-4-3-4"></a>

We define **`V(s)`** to be the expected cost to get to the goal from *s*. (*Read **heuristic***)

If we know `V(s)`, we can compute the optimal policy.

### [Bellman Equation (Deterministic)](ai_materials/slides/midterm2/mdp-slides.pdf#page=62)<a id="sec-4-3-5" name="sec-4-3-5"></a>

-   `V(goal) = 0`
-   `V(s) = min_a [ c(a) + V(s') ]`

### [Bellman Equation (For MDPs)](ai_materials/slides/midterm2/mdp-slides.pdf#page=67)<a id="sec-4-3-6" name="sec-4-3-6"></a>

-   `V(goal) = 0`
-   `V(s) = min_a [ c(a) + ∑_s' P(s' | s, a) * V(s') ]`

### Optimal Policy<a id="sec-4-3-7" name="sec-4-3-7"></a>

-   `π* (s) = argmin_a [ c(a) + ∑_s' P(s' | s, a) * V(s') ]`
    
    [Videos on MDP](https://aulaglobal.uc3m.es/mod/url/view.php?id=1625904)

## Examples<a id="sec-4-4" name="sec-4-4"></a>

### Bayesian Networks<a id="sec-4-4-1" name="sec-4-4-1"></a>

-   [Example of an alarm](ai_materials/slides/midterm2/bayesian-networks-slides.pdf#page=16)
-   [Example of an alarm continued](ai_materials/slides/midterm2/bayesian-networks-slides.pdf#page=32)