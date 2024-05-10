#Assignment 5 

#For the given demographics.csv perform the following operations:

# Load necessary libraries
library(dplyr)

# Read the CSV file
file_path <- "C:/Users/mariy/Downloads/Demographics.csv"
demographics <- read.csv(file_path)

# Print column names to ensure correct referencing
print(colnames(demographics))

# 1. Show the data of France
# Show the data of France if 'Country.Name' column exists
if ("Country.Name" %in% colnames(demographics)) {
  france_data <- subset(demographics, Country.Name == "France")
  print(france_data)
} else {
  print("Column 'Country.Name' not found in the dataset.")
}

# 2. Show the countries with birthrate >20 and High income (5)
if ("Birth.rate" %in% colnames(demographics) & "Income.Group" %in% colnames(demographics)) {
  high_birthrate_high_income <- filter(demographics, Birth.rate > 20 & Income.Group == "High income")
  print(high_birthrate_high_income)
} else {
  print("Columns 'Birth.rate' and/or 'Income.Group' not found in the dataset.")
}


# 3. Show the data of the country with the highest internet users (assumed based on highest value)
if ("Internet.users" %in% colnames(demographics)) {
  iceland_data <- demographics[which.max(demographics$Internet.users), ]
  print(iceland_data)
} else {
  print("Column 'Internet.users' not found in the dataset.")
}


# 4. Calculate the average Birthrate
if ("Birth.rate" %in% colnames(demographics)) {
  avg_birthrate <- mean(demographics$Birth.rate)
  print(avg_birthrate)
} else {
  print("Column 'Birth.rate' not found in the dataset.")
}

# 5. Standard Deviation of Birthrate
if ("Birth.rate" %in% colnames(demographics)) {
  std_dev_birthrate <- sd(demographics$Birth.rate)
  print(std_dev_birthrate)
} else {
  print("Column 'Birth.rate' not found in the dataset.")
}


# 6. Countries whose birth rate is two SDs above the mean
if ("Birth.rate" %in% colnames(demographics)) {
  high_birthrate_countries <- filter(demographics, Birth.rate > (avg_birthrate + 2 * std_dev_birthrate))
  print(high_birthrate_countries)
} else {
  print("Column 'Birth.rate' not found in the dataset.")
}

# 7. IQR of the birthrate (17.6)
if ("Birth.rate" %in% colnames(demographics)) {
  birthrate_iqr <- IQR(demographics$Birth.rate)
  print(birthrate_iqr)
} else {
  print("Column 'Birth.rate' not found in the dataset.")
}
