all: report-setup-sample.pdf slide-setup-sample.pdf md-setup-sample.pdf

report-setup-sample.pdf: report-setup-sample.tex report-setup.tex
	xelatex -shell-escape report-setup-sample.tex

slide-setup-sample.pdf: slide-setup-sample.tex slide-setup.tex
	xelatex -shell-escape slide-setup-sample.tex

md-setup-sample.pdf: md-setup-sample.md md-setup.tex
	multimarkdown -b -t latex $<
	xelatex -shell-escape md-setup-sample.tex

clean:
	rm -f *.aux *.log *.out *.pyg *.snm *.nav *.toc
	rm -f md-setup-sample.tex
