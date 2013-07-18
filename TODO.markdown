# TODO
## Final .vim folder structure

    bundle/   (generated)
    doc/
    tmp/
    _gvimrc
    _vimrc
    Makefile
    README.markdown
    BUILD.markdown
    TODO.markdown

## Plugin configuration

Decide whether to use plugin/ folder -- which autoloads `*.vim` files -- to
store per-bundled-plugin settings or to mix plugin settings with Bundle calls in
`.vimrc`.

## Makefile

1. Add a dependency check task to verify (and install) dependencies
   (the_silver_searcher and the likes).
2. Update `make clean` to remove bundles too.
3. Add a `make implode` task to destroy the cloned .vim folder too.

## Omnicompletion

Set-up correctly, make full use of this feature

