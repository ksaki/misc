#!/bin/bash

# Compile latex and bibtex
# The first argument is the file name (without suffix)

pdflatex $1
bibtex $1
pdflatex $1
pdflatex $1
