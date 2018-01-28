PRESENTATION = devconf-2018-Fedora-Haskell

PANDOC = pandoc

SLIDES = -t revealjs -V theme=simple -V transition=slide -V history=true --slide-level=2 --css smaller.css

MODE = "-V slidy-url=."

html:
	$(PANDOC) -s $(SLIDES) $(MODE) -o $(PRESENTATION).html $(PRESENTATION).md

upload:
	$(PANDOC) -s $(SLIDES) --self-contained -o $(PRESENTATION).html $(PRESENTATION).md
	scp $(PRESENTATION).html $(PRESENTATION).md fedorapeople.org:talks/devconf-2018-fedora-haskell/
