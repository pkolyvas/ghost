# This tool will produce a list of the teams in an organization

# Set OCTOKIT_ACCESS_TOKEN to authenticate

myOrg = ENV['GHOST_ORG']

require "octokit"

Octokit.auto_paginate = true
teams = Octokit.organization_teams myOrg

require "csv"

CSV.open("org-teams-membership.csv", "wb") do |csv|
  teams.each do |t|
  		members = Octokit.team_members t[:id]
  			members.each do |m|
  				user = Octokit.user m[:login]
		   		csv << [t[:id], t[:name], t[:url], m[:id], m[:login], user.name, m[:url], user.email] # etc
  			end
  end
end
