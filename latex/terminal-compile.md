# Compile Latex on Terminal

Reference: https://qiita.com/ocian/items/0e679e8bf72a39ada335


## For Uplatex
## Compile .tex file

```
uplatex hoge.tex
```

## Create PDF file

```
dvipdfmx hoge
```
##NOT for uplatex

```
pdflatex hoge.tex
```

## Update 2019/11/28.(I might have broken the setting but this works for now)
```
ptex2pdf -l hoge.tex
```
