VIM Configuration
=================

Install
-------

    # Download

    git clone git://github.com/mwbrooks/dotvim.git
    cd dotvim/

    # Deal with submodules

    git submodule init
    git submodule update

    # Install

    ln -s /path/to/dotvim ~/.vim
    ln -s /path/to/dotvim/vimrc ~/.vimrc
    ln -s /path/to/dotvim/gvimrc ~/.gvimrc

    # Build Command-T

    cd dotvim/bundle/command-t
    bundle install
    rake make

MacVim Configuration
--------------------

### Open Tabs in Existing Window

    vim /usr/bin/mvim

    # change:
    opts=
    # to:
    opts="--remote-tab"
