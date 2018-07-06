#!/usr/bin/env bash
#
# Create a deployment for our next product
# In order to create that deployment the "deployment_creator"
# utility is needed which will spend material worth $500.000
# for every run - succesful or not!
#
create_deployment() {
    # Can't use ./deployment_creator here, because
    # 1. this would require us to install any new release of the deployment_creator in this folder
    # 2. it would prevent us from mocking the app with a shell function
    deployment_creator -f deployment-control.txt
}
