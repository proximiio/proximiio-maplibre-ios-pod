#!/bin/bash

# works with a file called VERSION in the current directory,
# the contents of which should be a semantic version number
# such as "1.2.3"

# this script will display the current version, automatically
# suggest a "minor" version update, and ask for input to use
# the suggestion, or a newly entered value.

# once the new version number is determined, the script will
# pull a list of changes from git history, prepend this to
# a file called CHANGELOG.mb (under the title of the new version
# number) and create a GIT tag.

BASE_STRING=`cat VERSION`
BASE_LIST=(`echo $BASE_STRING | tr '.' ' '`)
V_MAJOR=${BASE_LIST[0]}
V_MINOR=${BASE_LIST[1]}
V_PATCH=${BASE_LIST[2]}
echo "Current version : $BASE_STRING"
V_MINOR=$((V_MINOR + 1))
V_PATCH=0
SUGGESTED_VERSION="$V_MAJOR.$V_MINOR.$V_PATCH"
echo "Will set new version to be $SUGGESTED_VERSION"
echo $SUGGESTED_VERSION > VERSION
sed -i -e "s/$BASE_STRING/$SUGGESTED_VERSION/" ProximiioMapLibre.podspec
sed -i -e "s/$BASE_STRING/$SUGGESTED_VERSION/" README.md
