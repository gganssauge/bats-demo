# bats demo project

This project contains demo data for the brown bag talk about
keeping your sanity when programming in bash.

The aim is to demonstrate the usefulness of unit tests even in
short projects involving bash scripting.

There are two cases to demonstrate

1. A utility library involving some file and text manipulation
    The *useful.sh* utility library contains a function to create a text file
    and add some subject to the file.
    Furthermore it contains a function to fix subjects which are not
    well-formed to some set of rules.

 2. A library using some application to create a deployment
    The *deploy-something.sh* libary contains a function to create a
    very expensive deployment which nonetheless (or better for this very
    reason) needs to be tested.

## unit test framework for bash scripts
This uses the bats framework at
https://github.com/sstephenson/bats for testing bash scripts.

I'm using it here in the form as a git submodule as proposed on
https://github.com/ztombol/bats-docs.

Use the script `support/add-bats-submodules.sh` to add the bats submodules
to your sandbox.

If you already cloned this repository it is only
necessary to run

    git submodule init
    git submodule update --recursive

in order to get all bats modules required.
