BASENAME = main

default: full

full:
	pdflatex  ${BASENAME}
	bibtex    ${BASENAME}
	pdflatex  ${BASENAME}
	pdflatex  ${BASENAME}
	cp main.pdf ../bup/latest.pdf
	cp main.pdf /home/antonk/Dropbox/public_html/thesis/bup/latest.pdf

quick:
	pdflatex  ${BASENAME} && pdflatex  ${BASENAME}
	cp main.pdf ../bup/latest.pdf
	cp main.pdf /home/antonk/Dropbox/public_html/thesis/bup/latest.pdf

.PHONY: clean

clean:
	@rm -f *.aux *.log *.bbl *.blg *.brf *.cb *.ind *.idx *.ilg  \
	      *.inx *.dvi *.toc *.out *~ ~* spellTmp *.nav *.pdf *.snm
