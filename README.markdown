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
* [command-t](http://www.vim.org/scripts/script.php?script_id=3025), 1.3.1
* [EasyGrep](http://www.vim.org/scripts/script.php?script_id=2438), 1.0
* [endwise][endwise-vimorg], 2011-08-30  _from [github][endwise-github]_
* [matchit](http://www.vim.org/scripts/script.php?script_id=39), 1.13.2
* [NERD_Commenter][nerdcommenter-vimorg], 2012-01-02  _from [github][nerdcommenter-github]_
* [NERD_Tree][nerdtree-vimorg], 2012-01-07  _from [github][nerdtree-github]_
* [rails.vim][rails-vimorg], 2011-11-25  _from [github][rails-github]_ 

# Color Schemes

* [pigraph.vim](https://raw.github.com/fmeyer/vim-pigraph/master/colors/pigraph.vim), 2011-04-06

# Notes

On Vim updates, check which ruby interpreter it compiled against (a simple `vim --version`
should tell you) and be sure to recompile command-t using the same ruby version,
or else gVim might crash.


[nerdtree-github]: http://github.com/scrooloose/nerdtree
[nerdtree-vimorg]: http://www.vim.org/scripts/script.php?script_id=1658 
[nerdcommenter-github]: http://github.com/scrooloose/nerdcommenter
[nerdcommenter-vimorg]: http://www.vim.org/scripts/script.php?script_id=1218
[rails-github]: https://github.com/tpope/vim-rails
[rails-vimorg]: http://www.vim.org/scripts/script.php?script_id=1567
[endwise-github]: https://github.com/tpope/vim-endwise
[endwise-vimorg]: http://www.vim.org/scripts/script.php?script_id=2386 

