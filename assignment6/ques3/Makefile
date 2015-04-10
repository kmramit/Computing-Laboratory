GENERATED=pdf dvi log aux
PDFLATEX=pdflatex --shell-escape
sample.pdf : ques3.tex
	${PDFLATEX} ques3.tex
	${PDFLATEX} ques3.tex
	${PDFLATEX} ques3.tex


clean:
	rm -f $(addprefix sample., ${GENERATED})
	rm -f *dot2tex*
