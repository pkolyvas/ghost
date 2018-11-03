# The GitHub Org Scrape Tool

GHOST is a set of simple ruby scripts which leverage [Octokit](https://github.com/octokit/octokit.rb)) in order to produce compliance or auditing... are you bored yet? I am.

You need to make lists. These simple scripts will allow you to produce list of:
- Users in a GitHub Org
- Org teams and their owner
- Users on teams in the Org
- Repos for teams in the Org
- Per Org repo user list 

Hopefully that's enough of a blueprint to help you get any other lists generated. 

Requirements:
- install bundle via gem (on OS X you'll need sudo)

# Usage:

Get set up:

```shell
$ git clone https://github.com/pkolyvas/ghost jive-ghost; cd jive-ghost
```

Bundle (we're going to use [Octokit](https://github.com/octokit/octokit.rb)):

```shell
$ bundle install
```

Replace `<org-username>` with the username of your organization in `export-all-members.rb` and/or `export-all-members-with-2fa-disabled.rb`.

Then export all members:

```shell
$ OCTOKIT_ACCESS_TOKEN=<yourtoken> bundle exec ruby export-all-members.rb
$ cat export-all.csv
```

or, export members with 2FA disabled:

```shell
$ OCTOKIT_ACCESS_TOKEN=<yourtoken> bundle exec ruby export-all-members-with-2fa-disabled.rb
$ cat export-2fa-disabled.csv
```
