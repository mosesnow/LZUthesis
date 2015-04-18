SOURCE=$(wildcard *.tex)
TARGET=$(patsubst %.tex,%.pdf,$(SOURCE))
BBL=$(patsubst %.tex,%.bbl,$(SOURCE))
AUX=$(patsubst %.tex,%.aux,$(SOURCE))

all: $(TARGET)

$(TARGET) : $(SOURCE)
	xelatex $<

ref: $(SOURCE) $(BBL)
	xelatex $<
	xelatex $<

$(BBL) : $(AUX)
	bibtex $<

$(AUX) : $(SOURCE)
	xelatex $<

clean:
	rm -f *.aux chapter/*.aux *.log *.blg *.bbl *.toc *.out
