My instances of vim are build from the latest [MacVim][macvim] snapshot, using
[`homebrew`][hb] and a patched version of macvim formula.

## Tweaking macvim.rb
Since I don't like all the defaults in `macvim.rb`, I alter the formula with
the following:

    --with-features=normal
    --enable-pythoninterp=dynamic

I also remove the following options to disable support for Perl/TCL:

    --enable-perlinterp
    --enable-tclinterp

### Reasoning
Setting `features` to `normal` reduces a little the number of useless stuff
vim's compiled with. Check [this table][vim-feats] to see which feature is 
enabled/disabled in each feature-set.

Passing `dynamic` to `--enable-pythoninterp` [makes vim load python][vim-py]
dynamically, picking the preferred python interpreter instead of just using the
(often broken) pre-installed Apple Python.

## Installing
After patching `macvim.rb` formula and commiting it to my local `homebrew`,
simply run:

```sh
	$ brew install macvim --override-system-vim --enable-clipboard
```

That's it.


[macvim]: http://code.google.com/p/macvim/
[hb]: https://github.com/mxcl/homebrew
[vim-feats]: http://mysite.verizon.net/astronaut/vim/vimfeat.html
[vim-py]: http://yyhh.org/blog/2012/05/install-vim-homebrew-python-os-x

