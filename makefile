install:
	@echo "#! /bin/sh" > ./kaido
	@cp kaido-config.el ~/.kaido-config.el
	@echo 'export KAIDO_HOME=$(shell pwd)' >> ./kaido
	@echo 'emacs --name Kaido --no-site-file --no-site-lisp --no-splash --title Kaido -q -l ~/.kaido-config.el "$$@"' >> ./kaido
	@sudo cp ./kaido /usr/bin
	@rm ./kaido
	@sudo chmod +x /usr/bin/kaido
