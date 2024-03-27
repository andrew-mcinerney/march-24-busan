---
  # Model Selection
  
  ```{r, echo=FALSE, out.width="65%", fig.align="center"}
knitr::include_graphics("img/FNN-ms.png")
``` 

---
  count: false
# Model Selection



```{r, echo=FALSE, out.width="65%", fig.align="center"}
knitr::include_graphics("img/FNN-vs.png")
``` 

---
  count: false
# Model Selection



```{r, echo=FALSE, out.width="65%", fig.align="center"}
knitr::include_graphics("img/FNN-vsmc.png")
``` 

---
  # Proposed Approach
  
  .pull-left[
    ```{r, echo=FALSE, out.width="100%", fig.align="center"}
    knitr::include_graphics("img/FNN1.png")
    ``` 
  ]
--
  .pull-right[
    Three phases for model selection:
      
      {{content}}
  ]

--
  
  1. Hidden-node selection
{{content}}



--
  
  2. Input-node selection
{{content}}

--
  
  3. Fine tuning
{{content}}

---
  # Proposed Approach
  
  --
  .center[
    <figcaption>Hidden Node Selection</figcaption>
      <img src="img/hidden-node-2.png" height="125px"/>
  ]
--
  .center[
    <figcaption>Input Node Selection</figcaption>
      <img src="img/input-node-2.png" height="125px"/>
  ]
--
  .center[
    <figcaption>Fine Tune</figcaption>
      <img src="img/fine-tune-2.png" height="125px"/>
  ]
---
  
  # Objective Function
  
  --
  
  - Machine Learning:
  
  --
  
  $$
  \begin{equation}
\text{Out-of-Sample MSE} = \frac{1}{n_\text{val}}\sum_{i=1}^{n_\text{val}} (y_i - NN(x_i))^2
\end{equation}
$$
  
  
  --
  
  - Proposed:
  
  --
  
  
  $$
  \begin{equation}
\text{BIC} = -2\ell(\hat{\theta}) + \log(n)(K + 1),
\end{equation}
$$
  
  --
  
  $$
  \begin{equation}
K = (p+2)q+1
\end{equation}
$$
  
  ---
  
  # Simulation Setup
  
  
  .pull-left[
    <br>
      
      
      True Model: $p = 3$, $q = 3$
      
  ]

---
  count: false
# Simulation Setup


.pull-left[
  <br>
    
    
    True Model: $p = 3$, $q = 3$
    
    
    <br>
    
    No. unimportant inputs: $10$
    
    
]



---
  count: false
# Simulation Setup


.pull-left[
  <br>
    
    
    True Model: $p = 3$, $q = 3$
    
    
    <br>
    
    No. unimportant inputs: $10$
    
    
    <br>
    
    Max no. hidden nodes: $10$
    
]

--
  
  .pull-right[
    ```{r, echo=FALSE, out.width="90%", fig.align="center"}
    knitr::include_graphics("img/simFNN.png")
    ``` 
  ]

---
  
  # Simulation Results: Approach
  
  --
  
  ```{r, echo=FALSE, out.width="65%", fig.align="center"}
knitr::include_graphics("img/table-sim-approach.png")
``` 

---
  # Simulation Results: Objective Function
  
  --
  
  ```{r, echo=FALSE, out.width="50%", fig.align="center"}
knitr::include_graphics("img/table-sim-objfun.png")
``` 

--
  ```{r, echo=FALSE, out.width="70%", fig.align="center"}
knitr::include_graphics("img/table-sim-metrics.png")
```
