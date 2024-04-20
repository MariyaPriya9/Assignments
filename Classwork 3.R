#Classwork 3

x <-rnorm(5)

#Another example on vectormath
N <- 100000
a <- rnorm(N)
b <- rnorm(N)

# Vectorized approach
c <- a * b
c

#How to call an R function
?rnorm
rnorm(n,mean=0, sd=1)

print_random_numbers <- function() {
  print(rnorm(5))
  print(rnorm(5, 10, 1))
  print(rnorm(5, 10))
  print(rnorm(5, mean=10, sd=1))
  print(rnorm(5, sd=1, mean=10))
  print(rnorm(5, sd=1))
}

# Call the function to print the numbers
print_random_numbers()



#Let’s do some simple graphics
X <- rnorm(10)
plot(X)
hist(X)

#Classwork 

#Test the law of large numbers for N random normally-distributed numbers with mean=0, stdev=1:
#Create an R script that will count how many of these numbersfall between -1 and 1, and divide by N
#You know that P(-1 to 1 ) = 68.2%
# Run the script at N=10, N=100, N=1000,....

# Generate the vector of numbers
x <- rnorm(100000)

# count how many are between -1 and 1
count <- 0
for (i in x) {
  if (i > -1 & i < 1) {
    count <- count + 1
  }
}

# Get and print the percentage, should be around 68%
percent <- count / length(x)
percent

# Basic R statistics tools

x <-rnorm(80000)
plot(x)
hist(x)
head(x)
tail(x)
range(x)
summary(x)
boxplot(x)