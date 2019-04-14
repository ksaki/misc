# List of functions that I have made and find it useful 

## plot coefficients and confidence intervals from the output of rstanarm
## Reference (link expired?) https://web.stanford.edu/~imalone/VAM/ggplot

coefplot_stan <- function(mod_stan, var, title){
  ## Plot the coefficients of the regression results from rstanarm
  ## input
  ## @mod_stan: output of rstanarm
  ## @var: a vector of the index of coefficeints to be reported (vector)
  ## @title: title of the plot (string)

  # create dataframe for plot of staned model
  coef <- mod_stan$coefficients[var]
  se <- mod_stan$ses[var]
  lower <- coef - qnorm(0.975)*se
  upper <- coef + qnorm(0.975)*se
  name <- names(coef)
  mod_stan_df <- data.frame(coef, se, lower, upper, name)

  # plot
  p <- ggplot(data = mod_stan_df,
              aes(x = name, y = coef, ymin = lower, ymax = upper)) +
    geom_pointrange(color = "black") +
    theme_bw() +
    coord_flip() +
    geom_hline(aes(yintercept=0), lty = 2) +
    ggtitle(title)

  return(p)




## Plot of polynomial with different degree of freedoms
data(Boston)
plot_boston_poly <- function(i, data){
  ## Plot the fitted line of polynomial with degree i 
  ## and scatter plot of data
  ## Using Boston dataset
  ## Independent variable is nox (--> should be an input)
  
  ## input
  ## @i: degree of polynomial (integer)
  ## @data: dataset (Boston)
     fit <- lm(dis ~ poly(nox, degree = i, raw = T), data = data)
     data$pred_dis <- predict(fit)
     ggplot(data) +
         geom_point(aes(x = nox, y = dis)) +
         geom_line(aes(x = nox, y = pred_dis), color = "red") +
         ggtitle(paste("Degree =", i, sep = " "))
}
plot_ls <- lapply(1:5, plot_boston_poly, data = Boston)
## each element of the list contains a plot of polynomial with degree = i
