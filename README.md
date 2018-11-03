# The GitHub Org Scrape Tool

GHOST is a set of simple ruby scripts which leverage [Octokit](https://github.com/octokit/octokit.rb) in order to produce compliance or auditing... are you bored yet? I am.

You're here because you need to make lists. These simple scripts will allow you to produce list of:
- Users in a GitHub Org
- Org teams 
- Users on teams in the Org
- Repos for teams in the Org

Hopefully that's enough of a blueprint to help you get any other lists generated. 

Requirements:
- install bundle via gem (on OS X you'll need `sudo`)

## Installatoin:

Get set up:

```shell
$ git clone https://github.com/pkolyvas/ghost jive-ghost; cd jive-ghost
```

Bundle (we're going to use [Octokit](https://github.com/octokit/octokit.rb)):

```shell
$ bundle install
```

## Configuration

Set environment variables which correspond to your [GitHub Access Token](https://github.com/settings/tokens) and the name of the [Organization](https://github.com/settings/organizations) you wish to scrape.

```shell
set -x -g OCTOKIT_ACCESS_TOKEN=my_token
set -x -g GHOST_ORG=my_org
```

or if you use `bash`

```shell
export OCTOKIT_ACCESS_TOKEN=my_token
export GHOST_ORG=my_org
```

## User Guide

Then create the default lists:

```shell
$ ./scrape.sh
```
