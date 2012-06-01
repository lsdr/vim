My instances of vim are build from the latest [MacVim][macvim] snapshot, using
[`homebrew`][hb] and a patched version of macvim formula to include the
following:

    --with-features=normal
    --enable-pythoninterp=dynamic
    --with-compiledby=Luiz Rocha

Setting `features` to `normal` reduces a little the number of useless stuff
vim's compiled with. Check [this table][vim-feats] to see which feature is 
enabled/disabled in each feature-set.

Passing `dynamic` to `--enable-pythoninterp` [makes vim load python][vim-py]
dynamically, picking the preferred python interpreter instead of just using the
(often broken) pre-installed Apple Python.

I also remove the following options to disable support for Perl/TCL:

    --enable-perlinterp
    --enable-tclinterp

That's it.


[macvim]: http://code.google.com/p/macvim/
[hb]: https://github.com/mxcl/homebrew
[vim-feats]: http://mysite.verizon.net/astronaut/vim/vimfeat.html
[vim-py]: http://yyhh.org/blog/2012/05/install-vim-homebrew-python-os-x
