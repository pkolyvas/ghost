# Usage:

First, install Octokit:

```shell
$ bundle install
```

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
