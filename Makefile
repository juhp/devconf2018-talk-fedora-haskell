PRESENTATION = devconf-2018-Fedora-Haskell

PANDOC = pandoc

OPTS = -t revealjs -V theme=simple -V transition=slide -V history=true --slide-level=2 --css smaller.css

html: reveal.js
	$(PANDOC) -s $(OPTS) -o $(PRESENTATION).html $(PRESENTATION).md

upload:
	$(PANDOC) -s $(OPTS) --self-contained -o $(PRESENTATION).html $(PRESENTATION).md
	scp $(PRESENTATION).html $(PRESENTATION).md fedorapeople.org:talks/devconf-2018-fedora-haskell/

REVEAL = 3.6.0

reveal.js:
	wget https://github.com/hakimel/reveal.js/archive/$(REVEAL).tar.gz
	tar zf reveal.js-$(REVEAL).tar.gz
	ln -s reveal.js-$(REVEAL) reveal.js
