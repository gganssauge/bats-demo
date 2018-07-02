#!/usr/bin/env bats

load "libs/bats-support/load"
load "libs/bats-assert/load"
load "libs/bats-file/load"

. "useful.sh"   # remember - this runs relative to our project root!

setup() {
    # make sure the tests don't pollute our sandbox
    cd "$BATS_TMPDIR"
}

@test "create_subject should create a file with the given name" {
    run create_subject name.txt

    # the creation must be sucessful
    assert_success

    # and it must have created the required file
    assert_file_exist "name.txt"
}


@test "create_subject should create a subject according to our rules" {
    # run the creation already tested above
    run create_subject name.txt
    # show the subject created
    run cat name.txt

    # verify the subject is in line with our rules
    assert_equal "$output" "This is a subject"
}

@test "fix_subject should fix a broken subject to make it match our rules" {
    # Create an invalid subject
    echo "This is a sxbject" > "name.txt"
    # fix inconsistencies
    run fix_subject "name.txt"
    # show the fixed subject
    run cat name.txt

    # verify the subject is in line with our rules
    assert_equal "$output" "This is a subject"
}
