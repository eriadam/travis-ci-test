#!/bin/bash
#
# Fetches all commit messages since the last tag and writes them to a
# RELEASE_NOTES.md file.

notes=$(git log --pretty="* %s"  $(git describe --tags --abbrev=0 @^)..@)
echo "${notes}"
pwd
ls -la
echo "${notes}" >> ./RELEASE_NOTES.md