# Git secrets github action

This action runs `git secrets --scan` in your repository code.

## Intended use

This github action is intended to be used as a last resort to avoid secrets getting merged into `main`.
Enable this action in your build pipeline for all branches, and make sure you get an A OK before merging that pull 
request!

## Example usage

uses: actions/git-secrets@v1