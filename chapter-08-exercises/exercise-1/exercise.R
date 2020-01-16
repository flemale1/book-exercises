# Exercise 1: creating and accessing lists

# Create a vector `my_breakfast` of everything you ate for breakfast
my_breakfast <- c("cereal", "oj")

# Create a vector `my_lunch` of everything you ate (or will eat) for lunch
my_lunch <- c("chicken", "rice", "mac salad")

# Create a list `meals` that has contains your breakfast and lunch
meals <- list(breakfast = my_breakfast, lunch = my_lunch)


# Add a "dinner" element to your `meals` list that has what you plan to eat 
# for dinner
meals$dinner <- c("chicken", "yakisoba")


# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'
dinner <- meals$dinner


# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason beyond practice)
meals[[5]] <- meals[[2]]


# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early_meals`
early_meals <- list(breakfast_again = meals[1], lunch_again = meals[2])



### Challenge ###

# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function to apply the `length()` function to each item
items_eaten <- list(lapply(meals, length))


# Write a function `add_pizza` that adds pizza to a given meal vector, and
# returns the pizza-fied vector
add_pizza <- function(meals){
  meals_and_pizza <- c(meals, "pizza")
  return(meals_and_pizza)
}


# Create a vector `better_meals` that is all your meals, but with pizza!
better_meals <- c(sapply(meals, add_pizza)) # this created a list, so whoops I guess

better_meals_2 <- c(sapply(my_breakfast, add_pizza), 
                    sapply(my_lunch, add_pizza), 
                    sapply(dinner, add_pizza)) # this is super wack but it does make a vector
                                               # It just kinda threw out all the values with pizza added
                                               # where the end of the vector would be, which feels a lot
                                               # less valuable compared to the organized list version

