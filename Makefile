
TARGET=index
FILES=$(TARGET).tex \
		beamerthemeRedHatKC.sty

all: $(TARGET).pdf



$(TARGET).pdf: $(FILES)
	pdflatex $(TARGET).tex
	pdflatex $(TARGET).tex

view: $(TARGET).pdf
	evince $(TARGET).pdf &

clean:
	rm -rf *.aux  *.dvi  *.log  *.nav  *.out  *.pdf  *.snm  *.toc
