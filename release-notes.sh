#!/bin/bash
#
# Fetches all commit messages since the last tag and writes them to a
# RELEASE_NOTES.md file.

git log --pretty="* %s"  $(git describe --tags --abbrev=0 @^)..@ >> RELEASE_NOTES.md