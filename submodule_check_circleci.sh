#!/usr/bin/env bash

# CircleCI runs this script to check if the commits in both of the submoules
# are coming from correct branches and not some random feature branch.

set -e

correct_branch=develop
declare -a submodules=("frontend" "backend")

for module in "${submodules[@]}"
do 
    commit=$(git submodule status | grep "${module}" | awk '{print $1}' | sed 's/[^0-9a-f]//g')
    (git -C "${module}" branch --contains "${commit}" | grep -q ${correct_branch} \
            && echo "${module} commit ${commit} was correctly in ${correct_branch}") \
    || (echo -e "${module} commit ${commit} was not in ${correct_branch}\nExiting with error." && exit 1)
done

echo Submodule commits ok!
