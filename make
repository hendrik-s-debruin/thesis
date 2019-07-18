#!/bin/bash

#latexmk -xelatex -output-directory=output main.tex -pvc -interaction=nonstopmode
latexmk -pdf -output-directory=output thesis_defence.tex -pvc -interaction=nonstopmode
