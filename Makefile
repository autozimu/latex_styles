report-setup-sample.pdf: report-setup-sample.tex report-setup.tex
	xelatex --shell-escape $<
