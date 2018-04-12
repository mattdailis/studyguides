<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#sec-1">1. Reasoning Under Uncertainty</a>
<ul>
<li><a href="#sec-1-1">1.1. Probabilistic Reasoning</a>
<ul>
<li><a href="#sec-1-1-1">1.1.1. Definitions</a></li>
<li><a href="#sec-1-1-2">1.1.2. Law of total probability</a></li>
</ul>
</li>
<li><a href="#sec-1-2">1.2. Markov Models</a>
<ul>
<li><a href="#sec-1-2-1">1.2.1. MDP</a></li>
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

[Bayesian Slides Probability](ai_materials/slides/midterm2/bayesian-slides.pdf#page=11)

### Definitions<a id="sec-1-1-1" name="sec-1-1-1"></a>

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

### Law of total probability<a id="sec-1-1-2" name="sec-1-1-2"></a>

    P(B) =  ∑P(B,Ai) =  ∑P(B|Ai)P(Ai)

Test equation

## Markov Models<a id="sec-1-2" name="sec-1-2"></a>

### MDP<a id="sec-1-2-1" name="sec-1-2-1"></a>

[Videos on MDP](https://aulaglobal.uc3m.es/mod/url/view.php?id=1625904)