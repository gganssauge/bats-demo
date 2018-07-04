#!/usr/bin/env bash

#
# Modify the subject file such that it doesn't longer
# contain an 'x' for a 'u' 
#
# Parameters:
#    name - name of subject file to fix 
#
fix_subject() {
    local name=$1

    sed -i 's,x,u'g "$name"
}

#
# Create a file containing some interesting subject
#
# Parameters:
#    name - name of subject file to create 
#
create_subject() {
    local name=$1

    echo 'This is a sxbject' >"$name"
}