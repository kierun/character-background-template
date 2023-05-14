# Tools
LATEXMK = latexmk
RM = rm -f
FIND = find
GM = gm

# Project specific settings
DOCNAME = character-background

# preview and reload options
PREVIEW=-view=pdf -pvc

# Targets
all: doc
doc: pdf
pdf: PREVIEW=
pdf: $(DOCNAME).pdf

# Rules
%.pdf: %.tex FORCE
	$(LATEXMK) -xelatex -interaction=nonstopmode -halt-on-error $(PREVIEW) $*

showcase/%.png: PREVIEW=
showcase/%.png: FORCE
	$(LATEXMK) -xelatex -interaction=nonstopmode -halt-on-error -output-directory=showcase $(PREVIEW) $*
	$(GM) convert -density 720 -resize 1024x "showcase/$*.pdf[4]" showcase/$*.png
	rm showcase/$*.pdf

showcase: showcase/modern.png
showcase: showcase/modern-a5.png
showcase: showcase/fantasy.png
showcase: showcase/fantasy-a5.png
showcase: showcase/eldritch.png
showcase: showcase/eldritch-a5.png

mostlyclean:
	$(LATEXMK) -silent -c
	$(RM) *.bbl

clean: mostlyclean
	$(LATEXMK) -silent -C
	$(RM) *.run.xml *.synctex.gz
	$(RM) *.d

format: indent/
	# format all tex and sty files; stick the cruft in the indent/ directory, then delete the cruft
	latexindent $(shell $(FIND) . -name "*.tex") $(shell $(FIND) . -name "*.sty") \
		--local --overwriteIfDifferent --silent --modifylinebreaks --cruft=indent/
	# remove all backup files created by latexindent
	$(FIND) indent -name "*.bak*" -maxdepth 1 -delete

indent/:
	mkdir -p indent

.PHONY: all clean doc mostlyclean pdf

# Include auto-generated dependencies
-include *.d

.PHONY: FORCE
FORCE:
