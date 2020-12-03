#!/bin/sh

# CircleCI runs this script to check if the commits pointing to the submodules
# are merge commits coming from the default branches and not just some random feature branch.

for module in $(git config --file .gitmodules --get-regexp path | awk '{ print $2 }')
do 
    default_branch="$(git -C "$module" remote show origin | awk '/HEAD branch/ {print $NF}')"
    commit="$(git -C "$module" rev-parse HEAD)"

    { git -C "$module" branch --all --contains "$commit" | grep --quiet "$default_branch" \
            && [ "$(git -C "$module" rev-list --parents --max-count 1 "$commit" | wc -w)" -gt 2 ] \
            && printf "%s commit %s was correctly a merge commit from %s.\n" "$module" "$commit" "$default_branch"; } \
        || { printf "%s commit %s was not a merge commit from %s!\nExiting with error!\n" "$module" "$commit" "$default_branch" \
            && exit 1; }
done

echo Submodule commits ok.
