<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#sec-1">1. Reasoning Under Uncertainty</a>
<ul>
<li><a href="#sec-1-1">1.1. Probabilistic Reasoning</a>
<ul>
<li><a href="#sec-1-1-1">1.1.1. Probabilities</a></li>
<li><a href="#sec-1-1-2">1.1.2. Reasoning</a></li>
</ul>
</li>
<li><a href="#sec-1-2">1.2. Bayesian networks</a></li>
<li><a href="#sec-1-3">1.3. Markov Models</a>
<ul>
<li><a href="#sec-1-3-1">1.3.1. MDP</a></li>
</ul>
</li>
</ul>
</li>
</ul>
</div>
</div>


# Reasoning Under Uncertainty<a id="sec-1" name="sec-1"></a>

[Bayesian Slides](ai_materials/slides/midterm2/bayesian-slides.pdf)

## Probabilistic Reasoning<a id="sec-1-1" name="sec-1-1"></a>

### Probabilities<a id="sec-1-1-1" name="sec-1-1-1"></a>

[Bayesian Slides Probability](ai_materials/slides/midterm2/bayesian-slides.pdf#page=11)

1.  Definitions

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
        
        -   Conditional Probability

2.  Law of total probability

        P(B) =  ∑P(B,Ai) over all possible Ai 
             =  ∑P(B|Ai)P(Ai) over all possible Ai

3.  [Conditional Probability](ai_materials/slides/midterm2/bayesian-slides.pdf#page=35)

        P(A|B) =  P(A, B) / P(B) if P(B) =/= 0
    
    Intuitively, `A | B` exists in the world of B: so `P(B) = 1` in this world.
    
    Thus, the probability of the intersection `P(A, B)` (read A **and** B) must be 
    scaled to the size of the whole reality, which is `P(B)`.
    
    TODO A picture would be nice.

4.  [Bayes Rule](ai_materials/slides/midterm2/bayesian-slides.pdf#page=35)

        P(A|B) * P(B) = P(B|A) * P(A)
    
    Note: There's an *alpha* trick

5.  [Chain rule](ai_materials/slides/midterm2/bayesian-slides.pdf#page=37)

    The goal is to compute **joint probabilites** using **conditional probabilities**
    
        P(X1, ..., Xn) = P(Xn | X1, ..., Xn-1) * P(X1, ..., Xn-1)
    
    Test equation
    OBS abletonlive

### Reasoning<a id="sec-1-1-2" name="sec-1-1-2"></a>

1.  Inference

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

2.  Independence

    `A` and `B` are **independent** iff `P(A, B) = P(A) * P(B)`
    
    Which implies that `P(A | B) = P(A)`
    
    > Independence is good. It **reduces** the size of the probability distribution.
    (M \* N) becomes (M + N)
    
    Further references: *AI: A Modern Approach* by Norvig

## Bayesian networks<a id="sec-1-2" name="sec-1-2"></a>

## Markov Models<a id="sec-1-3" name="sec-1-3"></a>

### MDP<a id="sec-1-3-1" name="sec-1-3-1"></a>

[Videos on MDP](https://aulaglobal.uc3m.es/mod/url/view.php?id=1625904)