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

    brew install wget nmap htop-osx mobile-shell automake glib bash tree

Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed

    brew install findutils

#### Versionning tools

    brew install git legit bazaar mercurial svn

#### Libraries

For image processing and plotting:

    brew install jpeg libpng libffi giflib boost protobuf lzlib grapviz gnuplot

For text processing:

    brew install gettext readline aspell xapian markdown w3m

For evented architecture:

    brew install libevent libuv zeromq freetype freexl fontconfig

#### Databases

    brew install sqlite redis postgresql cassandra hdf5

#### Python

    easy_install virtualenv virtualenvwrapper readline

    pip install ipython bpython pep8 PIL numpy matplotlib
	
and then work in your virtual environments.

For further integration with emacs, ropemacs is highly recommanded:

	pip install rope ropemacs ropemode

#### Clojure

    brew install clojure leiningen

### Javascript

    brew install node
    
Some node goodies:
    
    node install -g brunch bower

#### Text editor

Install the latest stable [Emacs](http://www.gnu.org/software/emacs/) version from http://emacsformacosx.com/

A good start can be found in my [emacs kicker](https://github.com/sebastibe/emacs-kicker) repository.

#### [zsh](http://www.zsh.org/) with [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
     
    brew install zsh

    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

Change your default terminal with

    chsh -s /bin/zsh

Or directly in iTerm preferences.

### Other goodies

* [iTerm2](www.iterm2.com) alternative to Term
* [GitHub for Mac](http://mac.github.com/)
* [iStumber](http://www.istumbler.net/) Mac Network discovery tool

And others also availables through the App store:

* [XCode](https://developer.apple.com/xcode/) is almost more and more mandatory...
* [Moom](http://manytricks.com/moom/) for better Mac OS X Windows organization 
* [GeekTool](http://projects.tynsoe.org/en/geektool/) enable to overlay information on the screen background 
* [Omnigraffle](http://www.omnigroup.com/products/omnigraffle/) is the best alternative to Vision for Mac. Expensive though. Exist for iPad too.
* [XQuartz](http://xquartz.macosforge.org/) X.Org Windows system for OS X (needed for gnuplot)
