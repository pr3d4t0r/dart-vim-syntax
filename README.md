# dart.vim syntax file

Dart is an object-oriented, typed, class defined, garbage collected language
used for developing mobile, desktop, web, and back-end applications.  Dart uses
a C-like syntax derived from C, Java, and JavaScript, with features adopted from
Smalltalk, Python, Ruby, and others.

More information about the language and its development environment at the
official [Dart Programming Language](https://dart.dev/) website.

dart.vim syntax detects and highlights Dart statements, reserved words,
type declarations, storage classes, conditionals, loops, interpolated values,
and comments.  There is no support idioms from Flutter or any other Dart
framework.


## Requirements

_The installation procedure described here are only required if the syntax
detection and highlighting from this project have not been merged into the Vim
public distribution._

Simple requirements:

1. Dart syntax file(s) for Vim 8.1 and later
1. `$HOME/.vim` must exist for local installation

*Recommended:*

Have Git available for automatic installation / updates to the `$HOME/.vim`
using the `dart4vim` command, included with this distribution.


## Installation


End-user installation is only required until the Vim team approves merging this
Dart syntax project into the main syntax files.  Dart syntax highlighting
project maintainers also require manual file handling.  This process installs
the  files in `$HOME/.vim` and Dart syntax highlight will be available on any 
Vim / MacVim / gVim that the user runs.


### Express installation

1. Exit Vim, MacVim, gVim - all Vim instances associated with your user
1. Execute from the console:<br>
   `curl -s https://raw.githubusercontent.com/pr3d4t0r/dart-vim-syntax/master/dart4vim | sh -s install`
1. Open `vim example.dart` to validate


### Automatic installation

1. Exit Vim, MacVim, gVim - all Vim instances associated with your user
1. Download the `dart4vim` bash script
1. Run the `./dart4vim install` script
1. Open `vim example.dart` to validate


### Dart syntax highlight developer installation

1. Exit Vim, MacVim, gVim - all Vim instances associated with your user
1. Clone the Dart syntax repository:<br>
   `git clone https://github.com/pr3d4t0r/dart-vim-syntax.git dart-vim`
1. Remove any old Dart syntax files already installed in `$HOME/.vim` <br>
    `./dart4vim remove`
1. Select the Git branch from whence to install the syntax files
1. Install from the project working directory: <br>
    `./dart4vim quick`
1. Open `vim example.dart` to validate


### Manual installation

1. Exit Vim, MacVim, gVim - all Vim instances associated with your user
1. Clone the Dart syntax repository:<br>
   `git clone https://github.com/pr3d4t0r/dart-vim-syntax.git dart-vim`
1. Copy the syntax file to the local environment:<br>
   `cp dart-vim/syntax/dart.vim ~/.vim/syntax`
1. Then the file detection file:
   `cp dart-vim/ftdetect/dart.vim ~/.vim/ftdetect`
1. And the documentation:
   `cp dart-vim/doc/dart.vim ~/.vim/doc`
1. Open `vim example.dart` to validate


## About

Support:  Eugene Ciurana, &lt;dart.syntax AT cime.net&gt;,
https://ciurana.eu/pgp or https://keybase.io/pr3d4t0r

Updates will be available through this repository and submitted for review to
the Vim team in accordance to 
https://github.com/vim/vim/blob/master/contributing.md


### License

Vim is Charityware.  dart.vim syntax is Charityware.

&copy; Copyright 2019 by Eugene Ciurana / pr3d4t0r.  Licensed under the
standard VIM LICENSE - Vim command `:help uganda.txt` for details.

