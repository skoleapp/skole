#!/usr/bin/env sh

# CircleCI runs this script to check if the commits pointing to the submodules
# are merge commits coming from the correct branches and not just some random feature branch.

set -e

correct_branch=develop

for module in backend frontend scripts
do 
    commit="$(git submodule status | grep "${module}" | awk '{print $1}')"

    { git -C "${module}" name-rev "${commit}"| grep --quiet "${correct_branch}" \
            && [ "$(git -C "${module}" rev-list --parents --max-count 1 "${commit}" | wc -w)" -gt 2 ] \
            && printf "%s commit %s was correctly a merge commit from %s\n." "$module" "$commit" "$correct_branch"; } \
        || { printf "%s commit %s was not a merge commit from %s!\nExiting with error!\n" "$module" "$commit" "$correct_branch" \
            && exit 1; }
done

echo Submodule commits ok.
