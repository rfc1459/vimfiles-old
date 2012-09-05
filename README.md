~/.vim
======

Contents of my ~/.vim directory.


Purpose of this fork
--------------------

To add (and remove!) some stuff I like and tweak key bindings to suite my bad
keyboard habits :-)


Vim
---

It is recommended that you use gVim in either Windows or Linux (even though
plain vim under gnome-terminal works just fine) and MacVim for Mac.

You can download vim from:

 * (Windows) [http://www.vim.org/download.php#pc](http://www.vim.org/download.php#pc) (gvim73\_46.exe)
 * (Mac) [https://github.com/b4winckler/macvim/downloads](https://github.com/b4winckler/macvim/downloads) (snapshot-56)


Bundled Plugins
---------------

 * [Align][] - align blocks of text using equal sign, make comment boxes and
   more
 * [bufexplorer][] - open buffers browser
 * [camelcasemotion][] - move on CamelCase and under\_scored words with w, b
   and e
 * [markdown][] - syntax highlight for Markdown
 * [surround][] - add, change, remove surrounding parentheses, brackets,
   quotes, etc
 * [taglist\_45][taglist-45] - uses ctag to lay out source files structure
 * [textile][] - syntax highlight for Textile
 * [vim-mercurial][mercurial] - syntax highlight for Mercurial commit messages
 * [gitolite.vim][gitolite] - syntax highlight for gitolite configuration
   files
 * [vim-protobuf-syntax][protobuf] - syntax highlight for Google Protocol
   Buffer definition files
 * [vimerl][] - a set of Erlang plugins for Vim
 * [Command-T][] - fuzzy filename search plugin (lost in subspace a few
   commits ago)
 * [tomorrow-theme][tomorrow] - yet another nice color theme


Usage
-----

Troubleshoot: Because of the large amount of submodules, if you ever have any
trouble after pulling from the repository, it will be easier to just back up
your old .vim folder and just git clone a new version.

Clone this repo into your home directory either as .vim (linux/mac) or
vimfiles (Windows). Such as:

    git clone git://github.com/rfc1459/vimfiles.git ~/.vim

Then 'cd' into the repo and run this to initialize the various submodules:

    git submodule init
    git submodule update

### Command-T Setup ###

[Command-T][] requires a working ruby installation, a C compiler, ruby
development files and a ruby-enabled version of Vim.

Provided your environment meets the requirements, cd into
~/.vim/bundle/command-t and run:

    rake make

to build Command-T.

### Activating the new configuration ###

After finishing setup, you should create a new `.vimrc` file in your home
directory that loads the pre-configured one that comes bundled in this
package. On Linux/Mac, a symbolic link will suffice:

    $ ln -s ~/.vim/vimrc .vimrc
    $ ln -s ~/.vim/gvimrc .gvimrc

On Windows, you should create a `_vimrc` and a `_gvimrc` in your profile's
home directory and add the following line inside:

\_vimrc:

    source ~/vimfiles/vimrc

\_gvimrc:

    source ~/vimfiles/gvimrc


Help Tags
---------

At first usage of vim, type ":" while in command mode and then execute:

    call pathogen#helptags()

This will make the plugins documentation available upon :help


Dependencies
------------

You will need the following software on your system:

 * Ruby (plus its development files)
 * a working C compiler
 * [Exuberant Ctags](http://ctags.sourceforge.net/)
 * Ncurses-term (in Linux only)

On Debian derivatives, for example, you will have to do:

    apt-get install build-essential exuberant-ctags ncurses-term ruby1.8-dev

As for Mac OS X and Windows, you're on your own. Have fun.


Vim? WTF?
---------

Visit the following sites to learn more about Vim:

 * http://vimcasts.org

There are many sites teaching Vim, if you know of any other that are easy to
follow for newcomers, let me know.


Credits
-------

 * Original project and most of the heavy lifting: @scrooloose
 * Command-T plugin: Wincent
 * Hacks and some snippets: @akitaonrails
 * Inspiration for cleanup: @mislav

[Align]: http://www.vim.org/scripts/script.php?script_id=294
[bufexplorer]: http://www.vim.org/scripts/script.php?script_id=42
[camelcasemotion]: http://www.vim.org/script.php?script_id=1905
[markdown]: http://www.vim.org/scripts/script.php?script_id=1242
[surround]: http://www.vim.org/scripts/script.php?script_id=1697
[taglist-45]: http://www.vim.org/scripts/script.php?script_id=273
[textile]: http://www.vim.org/scripts/script.php?script_id=2305
[mercurial]: https://github.com/DasIch/vim-mercurial
[gitolite]: https://github.com/tmatilai/gitolite.vim
[protobuf]: https://github.com/jdevera/vim-protobuf-syntax
[vimerl]: https://github.com/oscarh/vimerl
[Command-T]: https://wincent.com/products/command-t
[tomorrow]: https://github.com/chriskempson/tomorrow-theme
