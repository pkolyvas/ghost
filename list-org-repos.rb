# Set OCTOKIT_ACCESS_TOKEN to authenticate

myOrg = ENV['GHOST_ORG']

require "octokit"

Octokit.auto_paginate = true
teams = Octokit.organization_teams myOrg

require "csv"

CSV.open("org-repos.csv", "wb") do |csv|
  teams.each do |t|
  	repos = Octokit.team_repositories t[:id]
  		repos.each do |r|
   			csv << [t[:id], t[:name], r[:id], r[:name], r[:private], r[:url], r[:description]] # etc
  		end
  end
end
