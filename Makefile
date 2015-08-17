# Makefile for lsdr-vim distribution
DIST=$(HOME)/.vim

all: install

vimrc gvimrc:
	ln -nsf $(DIST)/_$@ $(HOME)/.$@

relink: vimrc gvimrc
	@printf "Configuration files relinked!\n"

tmpdir bundledir docdir:
	mkdir -p $(DIST)/$(patsubst %dir,%,$@)

init_bundle:
	@printf "Initializing bundles...\n";
	@if [ ! -d $(DIST)/bundle/vundle ]; then \
	  git clone https://github.com/gmarik/vundle.git $(DIST)/bundle/vundle; \
	fi

load_bundle: init_bundle
	vim +PluginInstall +qall

env_setup:
	@printf "Looking for a lsdr-vim distro... ";
	@if [ ! -d $(DIST) ]; then \
	  printf "Ops! \033[1;31m~/.vim is missing\033[0m, but is required to install. \033[1;37mQuitting\033[0m.\n"; \
	  exit 1; \
	else \
	  printf "OK!\n"; \
	fi

install: env_setup tmpdir bundledir load_bundle vimrc gvimrc
	@printf "All set. \033[1;32mvim is ready\033[0m to code.\n";

clean:
	rm -fr $(HOME)/.vimrc
	rm -fr $(HOME)/.gvimrc
	rm -fr $(DIST)/tmp
	rm -fr $(DIST)/conf.d
	rm -fr $(DIST)/bundle
	@printf "Done. lsdr-vim was \033[1;37msuccessfully uninstalled\033[0m. Moving on...\n";

# implode:
#         cd $(HOME)
#         rm -fr $(DIST)
#         @printf "There you go. lsdr-vim was \033[1;37mfully imploded\033[0m.\n";

