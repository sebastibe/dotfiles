## Instructions
### Creating source files

Any file which matches the shell glob `_*` will be linked into `$HOME`
as a symlink with the first `_` replaced with a `.`

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

#### Terminal multiplexer

    brew install tmux

A good addon to create and manage tmux sessions easily: [tmuxinator](https://github.com/aziz/tmuxinator)

    gem install tmuxinator

_Note:_ Install [RVM](#ruby) before.

#### UNIX tools

    brew install wget nmap htop-osx mobile-shell automake glib bash
    tree ifstat tcpdump

Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed

    brew install findutils

#### Versionning tools

    brew install git git-crypt legit bazaar mercurial svn

[Hg-Git](http://hg-git.github.io/) is a plugin for Mercurial, adding
the ability to push to and pull from a Git server repository from
Mercurial:

    easy_install hg-git

And add the extension to your `~/.hgrc`.

#### Libraries

For image processing and plotting:

    brew install jpeg libpng libffi giflib boost protobuf lzlib
    grapviz gnuplot libsvg svg2png svg2pdf xpdf ghostscript

For text processing:

    brew install gettext readline aspell xapian markdown w3m

For evented architecture:

    brew install libevent libuv zeromq freetype freexl fontconfig
    fontforge

For encryption:

    brew install gpg openssl

#### Databases

    brew install sqlite redis postgresql cassandra hdf5

#### Python

To manage different Python versions at the user level, one way to go is to use
[pythonbrew](https://github.com/utahta/pythonbrew):

    curl -kL http://xrl.us/pythonbrewinstall | bash

You can then work in a *virtualenv* using your favorite Python version.

    easy_install virtualenv virtualenvwrapper readline

    pip install --upgrade pip distribute

    pip install ipython bpython pep8 PIL numpy matplotlib psutil pyflakes

    pip install --user git+git://github.com/Lokaltog/powerline

and then work in your virtual environments.

For further integration with emacs, ropemacs is highly recommended:

    pip install rope ropemacs ropemode elpy

#### Clojure

    brew install clojure leiningen

#### Go

    brew install go

#### Ruby

    brew install libyaml libxml2 libxslt libksba

**RVM** is a command-line tool which allows you to easily install,
  manage, and work with multiple ruby environments from interpreters
  to sets of gems:

    curl -L https://get.rvm.io | bash -s stable --ruby

An **RVM** cheatsheet can be found [here](http://cheat.errtheblog.com/s/rvm).

#### Rust

    brew install rust

### JavaScript server

    brew install node

Some node goodies:

    node install -g brunch bower

#### Text editor

Install the latest stable [Emacs](http://www.gnu.org/software/emacs/)
version from http://emacsformacosx.com/

A good OS X port by @railwaycat can be found there:
[emacs-mac-port](https://github.com/railwaycat/emacs-mac-port) and can
be easilly installed with brew:

    brew install --HEAD https://raw.github.com/railwaycat/emacs-mac-port/master/emacs-mac.rb

A good start can be found in my [dotemacs](https://github.com/sebastibe/dotemacs) repository.

#### [zsh](http://www.zsh.org/) with [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

    brew install zsh

    git clone git://github.com/sebastibe/oh-my-zsh.git ~/.oh-my-zsh

And add zsh-syntax-highlighting in `~/.oh-my-zsh/custom/plugins`:

    git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

Change your default terminal with

    chsh -s /bin/zsh

Or directly in iTerm preferences.

#### Emails

    brew install isync

#### LaTeX

* [MacTex](http://www.tug.org/mactex/)
* PDF reader and note-taker (interacting with LaTeX)
  [Skim](http://skim-app.sourceforge.net/)

### Other goodies

* [iTerm2](www.iterm2.com) alternative to Term
* [GitHub for Mac](http://mac.github.com/)
* [iStumber](http://www.istumbler.net/) Mac Network discovery tool
* [WaterRoof](http://www.hanynet.com/waterroof/) Firewall editor
* [keyremap4macbook](https://pqrs.org/macosx/keyremap4macbook/) Remap
  your keyboard
* [slate](https://github.com/jigish/slate) Window management

And others also availables through the App store:

* [XCode](https://developer.apple.com/xcode/) is almost more and more
  mandatory...
* [Moom](http://manytricks.com/moom/) for better Mac OS X Windows
  organization (paid)
* [GeekTool](http://projects.tynsoe.org/en/geektool/) enable to
  overlay information on the screen background
* [Omnigraffle](http://www.omnigroup.com/products/omnigraffle/) is the
  best alternative to Vision for Mac. Expensive though. Exist for iPad
  too.
* [XQuartz](http://xquartz.macosforge.org/) X.Org Windows system for
  OS X (needed for gnuplot)
* [Android File Transfer](http://www.android.com/filetransfer/)
  Utility to tranfer files to an Android device
