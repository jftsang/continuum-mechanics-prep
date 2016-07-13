TEX_FILES = $(wildcard *.tex)
OUTPUTS = $(notdir $(TEX_FILES:.tex=)) 

all: $(TEX_FILES)

$(TEX_FILES):
	pdflatex $@

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc
