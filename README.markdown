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

## Recommended tools (Mac OS X)

### Package manager

* [Homebrew](http://mxcl.github.com/homebrew/)

    /usr/bin/ruby -e "$(/usr/bin/curl -fksSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"

### Utilities

#### UNIX tools

    brew install wget 

#### Versionning tools

    brew install git bazaar mercurial

#### Python

    easy_install virtualenv virtualenvwrapper readline

    pip install ipython bpython pep8 PIL numpy matplotlib
	
and then work in your virtual environments.

#### Libraries

    brew install libevent jpeg

#### Text editor

Install the latest stable [Emacs](http://www.gnu.org/software/emacs/) version from http://emacsformacosx.com/

A good start can be found in my [emacs kicker](https://github.com/sebastibe/emacs-kicker) repository.

#### [zsh](http://www.zsh.org/) with [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
     
    brew install zsh

    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

    chsh -s /bin/zsh

### Other goodies

* [iTerm2](www.iterm2.com)
* [GitHub for Mac](http://mac.github.com/)
