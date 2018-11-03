# Set OCTOKIT_ACCESS_TOKEN to authenticate

ENV['OCTOKIT_ACCESS_TOKEN']

require "octokit"

Octokit.auto_paginate = true
members = Octokit.org_members "<org-username>"

# Then, for example:

require "csv"

CSV.open("org-members.csv", "wb") do |csv|
  members.each do |m|
    user = Octokit.user m[:login]
    csv << [m[:id], m[:login], m[:html_url], user.name, user.email] # etc
  end
end
