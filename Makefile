# Makefile for lsdr-vim distribution
all: install

DIST=$(HOME)/.vim
TMPDIR=$(DIST)/tmp
# GIT=$(shell which git)
# clone_repos:
#         @if [ -x $(GIT) ]; then \
#           @echo Fetching lsdr-vim for Github...; \
#           $(GIT) clone git@github.com:lsdr/vim.git .vim; \
#         else \
#           @echo Sorry, "\033[0;31mgit is required\033[0m" to install lsdr-vim distro. "\033[1;37mQuitting\033[0m".; \
#           exit 1; \
#         fi
#
check_install:
	@printf "Looking for a lsdr-vim distro... ";
	@if [ ! -d $(DIST) ]; then \
	  printf "Ops! \033[1;31m~/.vim is missing\033[0m, but is required to install. \033[1;37mQuitting\033[0m.\n"; \
	  exit 1; \
	else \
	  printf "OK!\n"; \
	fi

install: check_install
	@printf "Installing. May take a while... \n";
	@if [ ! -d $(TMPDIR) ]; then \
	  printf "creating $(TMPDIR)..."; \
	  mkdir -p $(TMPDIR); \
	  printf "OK!\n"; \
	else \
	  printf "$(TMPDIR) already exists, skipping...\n"; \
	fi
	@if [ ! -h $(HOME)/.vimrc ]; then \
	  printf "symlinking .vimrc\n"; \
	  ln -s $(DIST)/_vimrc $(HOME)/.vimrc; \
	else \
	  printf ".vimrc already symlinked\n"; \
	fi
	@if [ ! -h $(HOME)/.gvimrc ]; then \
	  printf "symlinking .gvimrc\n"; \
	  ln -s $(DIST)/_gvimrc $(HOME)/.gvimrc; \
	else \
	  printf ".gvimrc already symlinked\n"; \
	fi
	@printf "All set. \033[1;32mvim is ready\033[0m to code.\n";

clean:
	@rm -fr .vimrc .gvimrc
	@printf "Done. lsdr-vim was \033[1;37msuccessfully uninstalled\033[0m. Moving on...\n";

