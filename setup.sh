#!/bin/sh
find . -type d -iname ".git" | xargs rm -rf

# clean 1_git-objects
rm git-good_git-basics/1_git-objects/new.txt
rm git-good_git-basics/1_git-objects/test.txt

# clean 2_git-references
rm -rf git-good_git-basics/2_git-references/git
rm git-good_git-basics/2_git-references/test.txt

# clean 3_packfiles
rm git-good_git-basics/3_packfiles/repo.rb