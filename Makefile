PRESENTATION = devconf-2018-Fedora-Haskell

PANDOC = pandoc

ifdef PRODUCTION
MODE = --self-contained
else
MODE = "-V slidy-url=."
endif

html:
	$(PANDOC) -s -t revealjs -V theme=simple -V transition=slide -V history=true --slide-level=2 --css smaller.css $(MODE) -o $(PRESENTATION).html $(PRESENTATION).md

upload:
	$(PANDOC) -s -t slidy --smart -o $(PRESENTATION).html $(PRESENTATION).md
	scp $(PRESENTATION).html $(PRESENTATION).md juhp@code.haskell.org:talks/fossasia2017-haskell-shell/
