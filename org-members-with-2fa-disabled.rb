# Set OCTOKIT_ACCESS_TOKEN to authenticate

myOrg = ENV['GHOST_ORG']

require "octokit"

Octokit.auto_paginate = true
members = Octokit.org_members myOrg, :filter => "2fa_disabled"

require "csv"

CSV.open("org-members-without-2fa.csv", "wb") do |csv|
  members.each do |m|
    user = Octokit.user m[:login]
    csv << [m[:id], m[:login], m[:html_url], user.name, user.email] # etc
  end
end
