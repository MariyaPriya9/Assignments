#Write a program to get the average of 3 numbers: 7, 12, and 5.
numbers <- c(7, 12, 5)
average <- sum(numbers) / length(numbers)
print(average)


#Write a program to print out “Welcome to R, <your first name>”
first_name <- "Mariya Priya"  
welcome_message <- paste("Welcome to R,", first_name)
print(welcome_message)


#Let x be 7, y be 12 and z be 4, print out whether x is bigger than y and whether x is bigger than z
x <- 7
y <- 12
z <- 4

is_x_bigger_than_y <- x > y
is_x_bigger_than_z <- x > z

print(paste("Is x bigger than y? ", is_x_bigger_than_y))
print(paste("Is x bigger than z? ", is_x_bigger_than_z))



