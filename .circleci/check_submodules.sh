#!/usr/bin/env bash

# CircleCI runs this script to check if the commits pointing to the submodules
# are merge commits coming from the correct branches and not just some random feature branch.

set -e

correct_branch=develop
declare -a submodules=("backend" "frontend" "scripts")

for module in "${submodules[@]}"
do 
    commit=$(git submodule status | grep "${module}" | awk '{print $1}')

    { git -C "${module}" name-rev "${commit}"| grep --quiet "${correct_branch}" \
            && [ $(git -C "${module}" rev-list --parents --max-count 1 "${commit}" | wc -w) -gt 2 ] \
            && echo "${module} commit ${commit} was correctly a merge commit from ${correct_branch}".; } \
        || { echo -e "${module} commit ${commit} was not a merge commit from ${correct_branch}!\nExiting with error!" \
            && exit 1; }
done

echo Submodule commits ok.
