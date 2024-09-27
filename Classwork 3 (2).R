# NORMAL DISTRIBUTION
# Generate a vector of 5 numbers from a normal distribution 
# with mean = 0 and standard deviation = 1
X <- rnorm(5)
print(X)

# Another vector example
N <- 100000
# Generate two vectors of size N from a standard normal distribution
a <- rnorm(N)
b <- rnorm(N) # Vectorized approach
# Perform element-wise multiplication of vectors a and b
c <- a * b
print(N)
print(a)
print(b)
print(c)

# ?rnorm rnorm(n,mean=0, sd=1)
# Generate a random sample of size 5 from a normal distribution
# with mean = 0 and standard deviation = 1
X <- rnorm(5, mean = 0, sd = 1)
print(X)

# This says that rnorm needs an n value, but mean and sd are optional, 
# and if not found will be given default values of 0 and 1

# All these are valid function calls
A <- rnorm(5)
B <- rnorm(5, 10, 1)
C <- rnorm(5, 10)
D <- rnorm(5, mean = 10, sd = 1)
E <- rnorm(5, sd = 1, mean = 10)
F <- rnorm(5, sd = 1)
print(A)
print(B)
print(C)
print(D)
print(E)
print(F)

# To try some simple graphics
x <- rnorm(10)
plot(x,horizontal=TRUE)
hist(x)
print(X)

# Law of large numbers

# Basic R statistical tools
Y <- rnorm(80000)
plot(Y,horizontal=TRUE)
hist(Y)
head(Y)
tail(Y)
range(Y)
summary(Y)
boxplot(Y,horizontal=TRUE)
print(Y)

# Generate a vector of numbers
z <- rnorm(10000)
# Count how many are between -1 and 1
count <- 0
for (i in x) {
  if (i > -1 & i < 1) {
    count <- count + 1
  }
}
# Get and print the percentage, should be around 68%
percent <- count / length(x)
percent
print(z)
