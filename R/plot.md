## plot coefficients and confidence intervals from the output of rstanarm


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

## 
