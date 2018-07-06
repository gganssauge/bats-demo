#!/usr/bin/env bash

. useful.sh

# create a subject to deploy
create_subject $1

# check if the subject really has been created
if test -f $1 ; then
    # yup - so now deploy the thing
    . deploy-something.sh

    # create a control file for the deployment
    echo $1 >control.txt

    # ... and off we go!
    # for this demo I want to use the deployment_creator app in this folder, so I add that to the path:
    PATH=".:$PATH" \
        create_deployment
fi

