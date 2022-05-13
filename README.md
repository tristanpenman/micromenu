# μMenu

A cute little menu system written in Ruby :smiling_face_with_three_hearts:

## Installation

From GitHub:

    git clone git@github.com:tristanpenman/micromenu.git
    cd micromenu
    gem install ./micromenu-0.0.1.gem
    gem build micromenu.gemspec

From RubyGems:

    gem install micromenu

## Usage

Once it's in your path, you can run μMenu from anywhere using `um`.

Running `um` with a particular path as its first argument will change the working directory before doing anything else. e.g:

    um examples

The output from running this command should look like this:

    $ um examples
    ✨ μMenu ✨
    Select an action: (Use ↑/↓ arrow keys or numbers to select)
    ‣ 1) 📁 group-a
      2) 📁 group-b

The directory `group-b` contains a sub-directory `subgroup-a`, so you can navigate down to that.

When an executable file is discovered, you can provide arguments for it.

### Arguments

If you pass in a complete selection of navigation arguments, then any remaining arguments will be passed to the child process. For example:

    $ um examples 1 1 hello world
    ✨ μMenu ✨
    ⤷ group-a
    ⤷ simon-says
    hello world

## License

This code is licensed under the MIT License.

See the LICENSE file for more information.
