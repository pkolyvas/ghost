# Set OCTOKIT_ACCESS_TOKEN to authenticate

require "octokit"

Octokit.auto_paginate = true
members = Octokit.org_members "<org-username>", :filter => "2fa_disabled"

# Then, for example:

require "csv"

CSV.open("export-2fa-disabled.csv", "wb") do |csv|
  members.each do |m|
    user = Octokit.user m[:login]
    csv << [m[:id], m[:login]] # etc
  end
end
