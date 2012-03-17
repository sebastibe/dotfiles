## Instructions
### Creating source files
Any file which matches the shell glob `_*` will be linked into `$HOME` as a symlink with the first `_`  replaced with a `.`

For example:

    _bashrc

becomes

    ${HOME}/.bashrc

### Installing source files
It's as simple as running:

    ./install.sh

From this top-level directory.

## Requirements

* bash

## Recommended tools (Mac OS X)

* [Homebrew][http://mxcl.github.com/homebrew/]

    /usr/bin/ruby -e "$(/usr/bin/curl -fksSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"

* the following utilities

UNIX tools

    brew install wget 

versionning tools

    brew install git bazaar mercurial

language

    brew install python

libraries

    brew install libevent jpeg

Editor

    brew install emacs

* pip 

    easy_install pip

    pip install virtualenv virtualenvwrapper ipython bpython pep8 PIL

Scientific tools

    pip install numpy matplotlib

* [zsh][http://www.zsh.org/] with [oh-my-zsh][https://github.com/robbyrussell/oh-my-zsh]

   brew install zsh

   git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

   chsh -s /bin/zsh

* emacs

## Other goodies

* [iTerm2][www.iterm2.com]