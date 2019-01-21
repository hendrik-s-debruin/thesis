#!/bin/bash

#latexmk -pdf -output-directory=output -pvc #-interaction=nonstopmode
#latexmk -xelatex -output-directory=output main.tex #-pvc #-interaction=nonstopmode
latexmk -xelatex -output-directory=output defense.tex -pvc #-interaction=nonstopmode
