#!/usr/bin/env bats

load "libs/bats-support/load"
load "libs/bats-assert/load"
load "libs/bats-file/load"

. "deploy_something.sh"    # remember - this runs relative to our project root!

#
# The deployment creation is so expensive that
# we can't afford to run it only for tests
#
# Thus we can only verify the calls to the creator have the right parameters.
#
deployment_creator() {
    echo "deployment_creator" "$@"
}

@test "creation of a deployment should call the deployment_creator with our control file" {
    run create_deployment

    assert_success
    assert_equal "$output" "deployment_creator -f deployment-control.txt"
}
