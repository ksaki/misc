## pass strings to group_by()


## mutate binary variables created from a categorical variable
## Reference: https://stackoverflow.com/questions/35663580/using-tidyr-spread-function-to-create-columns-with-binary-value

df <- data.frame(id = seq(1,7), day = c("Mon","Tue", "Wed","Thur", "Fri", "Sat", "Sun"))

df %>%
  mutate(var = 1) %>%
  spread(day, var, fill = 0, sep = "_") 

# test comment here
