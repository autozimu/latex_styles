all: report-setup-sample.pdf slide-setup-sample.pdf

report-setup-sample.pdf: report-setup-sample.tex report-setup.tex

slide-setup-sample.pdf: slide-setup-sample.tex slide-setup.tex

# md-setup-sample.pdf: md-setup-sample.md md-setup.tex
	# multimarkdown -b -t latex $<
	# xelatex -shell-escape md-setup-sample.tex

clean:
	lhide --delete
