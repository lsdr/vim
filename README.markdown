# Usage

On Home dir:

```sh
    $ git clone git://github.com/lsdr/vim-folder.git .vim  
    $ ln -s .vim/_vimrc .vimrc  
    $ ln -s .vim/_gvimrc .gvimrc  
    $ mkdir -p .vim/tmp  
```

To update:

```sh
    $ cd .vim
    $ git pull origin master
```

# Plugin Versions

* [autoclose](http://www.vim.org/scripts/script.php?script_id=1849), 1.2
* [autocomplpop](http://www.vim.org/scripts/script.php?script_id=1879), 2.14.1
* [command-t](http://www.vim.org/scripts/script.php?script_id=3025), 1.2.1
* [EasyGrep](http://www.vim.org/scripts/script.php?script_id=2438), 0.98
* [endwise](http://github.com/tpope/vim-endwise), 2011-05-11
* [matchit](http://www.vim.org/scripts/script.php?script_id=39), 1.13.2
* [NERD_tree](http://www.vim.org/scripts/script.php?script_id=1658), 4.1.0
* [NERD_Commenter][nerdcommenter], 2011-05-05
* [rails.vim](http://github.com/tpope/vim-rails), 2011-06-23

# Color Schemes

* [solarized.vim](https://github.com/altercation/solarized/raw/master/vim-colors-solarized/colors/solarized.vim), 2011-05-09
* [pigraph.vim](https://raw.github.com/fmeyer/vim-pigraph/master/colors/pigraph.vim), 2011-04-06

# Notes

On Vim updates, check which ruby interpreter it compiled against (a simple `vim --version`
should tell you) and be sure to recompile command-t using the same ruby version,
or else gVim might crash.

[nerdcommenter]: http://github.com/scrooloose/nerdcommenter
[nerdcommenter-vimorg]: http://www.vim.org/scripts/script.php?script_id=1218
