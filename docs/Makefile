TEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error

.PHONY: all view

all : dflow-doc.pdf

view : dflow-doc.pdf
	    open dflow-doc.pdf

dflow-doc.pdf : dflow-doc.tex 
	    $(TEX) dflow-doc.tex 

