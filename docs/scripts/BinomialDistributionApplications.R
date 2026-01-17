# plotDistributions
## Binomial Distribution Applications

source("http://raw.githubusercontent.com/cwendorf/plotDistributions/main/source-plotDistributions.R")

## A fair coin is flipped 10 times. What is the probability of different numbers of heads?

### What is the probability of getting exactly 5 heads?

binom.pdf(params = c(size = 10, prob = .5), limits = c(5, 5))

### What is the probability of getting 7 or more heads?

binom.pdf(params = c(size = 10, prob = .5), limits = c(7, 10))

### What is the probability of getting between 4 and 6 heads?

binom.pdf(params = c(size = 10, prob = .5), limits = c(4, 6))

## A multiple-choice test has 20 questions, each with 4 options. A student guesses on all questions.

### What is the probability of getting exactly 5 questions correct?

binom.pdf(params = c(size = 20, prob = .25), limits = c(5, 5))

### What is the probability of getting 10 or more questions correct?

binom.pdf(params = c(size = 20, prob = .25), limits = c(10, 20))

### What is the probability of getting between 3 and 7 questions correct?

binom.pdf(params = c(size = 20, prob = .25), limits = c(3, 7))

## A basketball player has a 70% free throw success rate and takes 15 shots.

### What is the probability of making exactly 12 shots?

binom.pdf(params = c(size = 15, prob = .70), limits = c(12, 12))

### What is the probability of making fewer than 8 shots?

binom.pdf(params = c(size = 15, prob = .70), limits = c(0, 7))

### What is the probability of making between 9 and 13 shots?

binom.pdf(params = c(size = 15, prob = .70), limits = c(9, 13))
