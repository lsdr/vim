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
* [NERD_Commenter][nerdcommenter-vimorg], 2012-03-22  _from [github][nerdcommenter-github]_
* [rails.vim][rails-vimorg], 2012-04-19  _from [github][rails-github]_ 
* [vim-ruby][vim-ruby-github], 2012-04-20 _from [github][vim-ruby-github]_
* [vimerl][vimerl-vimorg], 2012-03-27 _from [github][vimerl-github]_

# Syntax
* [python 3.0](http://www.vim.org/scripts/script.php?script_id=790), 3.0.7

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
[vim-ruby-github]: https://github.com/vim-ruby/vim-ruby
[vimerl-vimorg]: http://www.vim.org/scripts/script.php?script_id=3743
[vimerl-github]: https://github.com/jimenezrick/vimerl

