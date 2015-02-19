
### R Setup

- Install R
- Install RStudio
- Install Swirl
- setwd("D:/PrivateWorkspace/rspace")
- install.packages("swirl")
- library("swirl")


## Swirl Guide  
  
> swirl()  
> help.start()    


> When you are at the R prompt (>):
| -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own;
| swirl will ignore what you do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be
| saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.


Tutorial  
-----------------
[Cheat Sheet](http://cran.r-project.org/doc/contrib/Short-refcard.pdf)

> ?`:` - operator help - backtick

> ?function - function help

> z <- c(1,2,3,4) - create collection z

> b <- z * 2 + 10 = multiply all elements with 2 and sum 10


> mysqrt <- sqrt(z-1) = substract z elements by element and sqrt 
 element by element 
 
>my_seq <- seq(5,10, length=30)
 1:10, pi:10
seq(along.with = my_seq)
> rep(c(0,1,2), times=10)
 [1] 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1
[30] 2

> rep(c(0,1,2), each=10) - repeat 10 times zeros, etc

> num_vect <- c(0.5, 55, -10, 6)
> tf <- num_vect < 1

| The statement num_vect < 1 is a condition and tf tells us whether each corresponding element of our numeric vector num_vect satisfies this condition

> paste(my_char, collapse = " ")
[1] "My name is"

### Caveats of Vector Operations


> When given two vectors of the same length, R simply performs
| the specified arithmetic operation (`+`, `-`, `*`, etc.)
| element-by-element. If the vectors are of different lengths,
| R 'recycles' the shorter vector until it is the same length
| as the longer vector

If the length of the shorter vector does not divide evenly
| into the length of the longer vector, R will still apply the
| 'recycling' method, but will throw a warning to let you know
| something fishy might be going on


### Twitter Anomaly detection

install.packages("devtools")
devtools::install_github("twitter/AnomalyDetection")
help(AnomalyDetectionTs)
??AnomalyDetectionTs
library(AnomalyDetection)
help(AnomalyDetectionTs)
data(raw_data)
res = AnomalyDetectionTs(raw_data, max_anoms=0.02, direction='both', plot=TRUE)
res$plot
raw_data
AnomalyDetectionVec(raw_data[,2], max_anoms=0.02, period=1440, direction='both', only_last=FALSE, plot=TRUE)
res = AnomalyDetectionTs(raw_data, max_anoms=0.02, direction='both', plot=TRUE)


======================

install.packages("devtools")
devtools::install_github("twitter/AnomalyDetection")
help(AnomalyDetectionTs)
??AnomalyDetectionTs
library(AnomalyDetection)
help(AnomalyDetectionTs)
data(raw_data)
res = AnomalyDetectionTs(raw_data, max_anoms=0.02, direction='both', plot=TRUE)
res$plot
raw_data
AnomalyDetectionVec(raw_data[,2], max_anoms=0.02, period=1440, direction='both', only_last=FALSE, plot=TRUE)
res = AnomalyDetectionTs(raw_data, max_anoms=0.02, direction='both', plot=TRUE)
