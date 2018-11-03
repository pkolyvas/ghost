# The GitHub Org Scrape Tool

GHOST is a set of simple ruby scripts which leverage [Octokit](https://github.com/octokit/octokit.rb) in order to produce compliance or auditing... are you bored yet? I am. I just want to know if there are any ghosts in my org.

You're here because you need to make lists. These simple scripts will allow you to:
- List users in a GitHub Organization
- List the teams in a GitHub Organization
- List the users on the teams in a GitHub Organization
- List the repositories and their teams in a GitHub Organization

Hopefully that's enough of a blueprint to help you get any other lists generated. 

Requirements:
- install bundle via gem (on OS X you'll need `sudo`)
- Membership in the organization you'd like to scrape

## Installation:

Get set up:

```shell
$ git clone https://github.com/pkolyvas/ghost jive-ghost; cd jive-ghost
```

You'll need to have bundle installed. We're going to use [Octokit](https://github.com/octokit/octokit.rb):

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

## To Do

The most complex script (not that complex but I'm tired) is to produce an array of all the members in an org and then test each repo for membership. There does not appear to be an easier method to do this. 