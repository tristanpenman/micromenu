# μMenu

[![Gem Version](https://badge.fury.io/rb/micromenu.svg)][gem]

A cute little menu system written in Ruby :smiling_face_with_three_hearts:

## Installation

From GitHub:

    git clone git@github.com:tristanpenman/micromenu.git
    cd micromenu
    gem install ./micromenu-*.gem
    gem build micromenu.gemspec

From RubyGems:

    gem install micromenu

## Usage

Once it's in your path, you can run μMenu from anywhere using `um`.

    $ cd examples
    $ um
    ✨ μMenu ✨
    Select an action: (Use ↑/↓ arrow keys or numbers to select)
    ‣ 1) 📁 group-a
      2) 📁 group-b

The directory `group-b` contains a sub-directory `subgroup-a`, so you can navigate down to that.

When an executable file is discovered, you will be prompted to provide arguments for it.

### Starting directory

Running `um` with a particular path as its first argument will change the working directory before doing anything else. e.g:

    um examples

The output from running `um examples` should look like this:

    $ um examples
    ✨ μMenu ✨
    Select an action: (Use ↑/↓ arrow keys or numbers to select)
    ‣ 1) 📁 group-a
      2) 📁 group-b

This is designed so that you can create bash aliases and the like. For example, I have a collection of scripts that I use in my work at [Vivi](https://vivi.io), so I have created an alias called `umv`.

I also have another called `um64` for [N64 development](https://github.com/tristanpenman/asteroids/tree/master/n64).

### Arguments

If you pass in a complete selection of navigation arguments, then any remaining arguments will be passed to the child process. For example:

    $ um examples 1 1 hello world
    ✨ μMenu ✨
    ⤷ group-a
    ⤷ simon-says
    hello world

### Acknowledgements

μMenu makes good use of [tty-prompt](https://github.com/piotrmurach/tty-prompt), which really keeps things simple. Shout out to [Piotr Murach](https://piotrmurach.com/) for creating it!

## License

This code is licensed under the MIT License.

See the LICENSE file for more information.
