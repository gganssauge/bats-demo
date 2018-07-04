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
    create_deployment
fi

