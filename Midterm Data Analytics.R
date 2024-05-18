# Install readr package
install.packages("readr")

# Load necessary libraries
library(readr)

# Load the data
data <- read_csv("C:\\Users\\mariy\\Downloads\\Salaries.csv")

# Preview the data
head(data)
summary(data)

#Linear Regression
linear_model <- lm(salary ~ phd, data=data)
summary(linear_model)

library(ggplot2)

# Linear Regression Plot
ggplot(data, aes(x=phd, y=salary)) +
  geom_point() +
  geom_smooth(method="lm", col="blue") +
  labs(title="Linear Regression of Salary on PhD",
       x="Years since PhD", y="Salary")


#Polynomial Regression
# Adding a squared term for phd
data$phd2 <- data$phd^2
poly_model <- lm(salary ~ phd + phd2, data=data)
summary(poly_model)

# Polynomial Regression Plot
ggplot(data, aes(x=phd, y=salary)) +
  geom_point() +
  geom_smooth(method="lm", formula = y ~ poly(x, 2), col="red") +
  labs(title="Polynomial Regression of Salary on PhD",
       x="Years since PhD", y="Salary")


#Logistic Regression
# Creating a binary variable for salary based on the median
median_salary <- median(data$salary)
data$salary_above_median <- ifelse(data$salary > median_salary, 1, 0)

logistic_model <- glm(salary_above_median ~ phd + service, family = binomial(), data = data)
summary(logistic_model)

# Add fitted probabilities to the data
data$fitted_probs <- predict(logistic_model, type="response")

# Logistic Regression Plot
ggplot(data, aes(x=phd, y=fitted_probs)) +
  geom_point(aes(color=factor(salary_above_median))) +
  geom_line() +
  labs(title="Logistic Regression of High Salary on PhD",
       x="Years since PhD", y="Probability of Salary Above Median")




