all: pdf dvi 
 
pdf:
	 pdflatex article.tex
	 bibtex article 
	 pdflatex article.tex 
	 pdflatex article.tex
	 pdflatex resume.tex
dvi:
	 latex article.tex
	 bibtex article 
	 latex article.tex 
	 latex article.tex 
	 latex resume.tex
clean :
	rm -r *.log *.blg *.aux *.bbl
