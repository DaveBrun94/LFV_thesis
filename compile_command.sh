pdflatex --jobname LFV_thesis main
bibtex LFV_thesis
pdflatex --jobname LFV_thesis main
pdflatex --jobname LFV_thesis main
GLOBIGNORE='LFV_thesis.pdf'
rm LFV_thesis.* *~ */*~
unset GLOBIGNORE
