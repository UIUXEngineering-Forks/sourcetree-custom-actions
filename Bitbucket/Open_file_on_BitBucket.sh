#!/bin/bash

# origin http://jasonneylon.wordpress.com/2011/04/22/opening-github-in-your-browser-from-the-terminal/
# Opens the github page for the current git repository in your browser
# git@github.com:jasonneylon/dotfiles.git
# https://github.com/jasonneylon/dotfiles/
function bitbucket_base_url() {
  giturl=$(git config --get remote.origin.url)
  if [ "$giturl" == "" ]
    then
     echo "Not a git repository or no remote.origin.url set"
     exit 1;
  fi

  giturl=${giturl/git\@bitbucket\.org\:/https://bitbucket.org/}
  giturl=${giturl/\.git//}
  echo $giturl
}

function bitbucket_branch() {
    branch="$(git symbolic-ref HEAD 2>/dev/null)" ||
    branch="(unnamed branch)"     # detached HEAD
    branch=${branch##refs/heads/}
    echo $branch
}

open "$(bitbucket_base_url)tree/$(bitbucket_branch)/$1"