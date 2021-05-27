SOURCE=$(wildcard *.tex)
TARGET=$(patsubst %.tex,%.pdf,$(SOURCE))
BBL=$(patsubst %.tex,%.bbl,$(SOURCE))
AUX=$(patsubst %.tex,%.aux,$(SOURCE))
BIBNOTE=$(patsubst %.tex,%Notes.bib,$(SOURCE))

.PHONY : all
all: $(TARGET)

$(TARGET): %.pdf: %.tex %.bbl
	xelatex --synctex=-1 $<
	xelatex --synctex=-1 $<

$(BBL) : %.bbl: %.aux
	bibtex $^

$(AUX) : %.aux: %.tex
	xelatex --synctex=-1 $^

.PHONY : clean
clean:
	@rm -f *.aux *.log *.blg *.bbl *.toc *.out $(BIBNOTE) *.synctex *.lyx~ *.synctex.gz *.synctex\(busy\) *.lot *.lof $(TARGET)

