# This tool will produce a list of the teams in an organization

# Set OCTOKIT_ACCESS_TOKEN to authenticate

myOrg = ENV['GHOST_ORG']

require "octokit"

Octokit.auto_paginate = true
teams = Octokit.organization_teams myOrg

require "csv"

CSV.open("org-teams.csv", "wb") do |csv|
  teams.each do |t|
   		csv << [t[:id], t[:name], t[:url], t[:description]] # etc
  end
end
