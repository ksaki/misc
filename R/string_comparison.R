# Issues with using character type for numbers

# Example data frame with ID is from 1 to 10
data <- data.frame(x=rnorm(10),
                   id=seq(1, 10))

# The task is to subset the dataframe such that ID > 5

# works correctly if ID is numeric
class(data$id)
subdata <- data[data$id > 5,]
subdata

# return an incorrect result if ID is character!
data$id_char <- as.character(data$id)
class(data$id_char)
subdata_char <- data[data$id_char > 5,]
subdata_char
# why the last row is not in the result??

# According to the help page of comparison operator (?Comparison)

# "If the two arguments are atomic vectors of different types, one is coerced to the type of the other, the (decreasing) order of precedence being character, complex, numeric, integer, logical and raw."

# It means that if an object with character type is compared with
# an object with numeric type, the numeric object will be coerced to become 
# character.

# Effectively, in line 17, we are doing 
data$id_char > '5' #('5' is now character type.) 

# If you run line 27, the next question is why '10' < '5' instead of '10' > '5'.

# According to ?Comparison again, it also says

# "Comparison of strings in character vectors is lexicographic within the strings"

# Basically, it means that comparison of objects with character types are done
# in the same way as a dictionary does. 

# If we compare '10' and '5', it starts with comparing the first character, 
# (as if it is a word), which is '1' and '5', and because '1' comes earlier
# than '5' in a dictionary, we have '1' > '5'. 
# R will stop there and will not look at the second character '0'.
# Therefore, we have '10' > '5' as a very wired result.

