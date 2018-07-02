#!/usr/bin/env bash
#
# Create a deployment for our next product
# In order to create that deployment the "deployment_creator"
# utility is needed which will spend material worth $500.000
# for every run - succesful or not!
#
create_deployment() {
    deployment_creator -f deployment-control.txt
}
