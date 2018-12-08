# How to write R code in Latex like Rmarkdown?

1. R code chunk should be surrounded by
```
<< >>=  code is here  @
```
- insert knitr code chunk option (e.g. eval = TRUE) inside << >>.
- inline code should be \Sexpr{code is here}.

2. Change the extension to myfile.Rnw

3. compile by
```
Rscript -e "library(knitr); knit('myfile.Rnw')"
```

This generates myfile.tex . Compile this as usual by

```
pdflatex myfile.tex
```

When you want to change the parameters in knitr, insert them between << >>. 
For instance, to stop the messages of loading package,
```
<< message = F >> 
```
and to adjust the height and width of the graph, 
```
<< fig.witth = 4, fig.height = 4 >> 
``
