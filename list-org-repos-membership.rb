# Set OCTOKIT_ACCESS_TOKEN to authenticate

myOrg = ENV['GHOST_ORG']

require "octokit"

Octokit.auto_paginate = true
teams = Octokit.organization_teams myOrg
members = Octokit.org_members myOrg

require "csv"

CSV.open("org-repo-membership.csv", "wb") do |csv|
  	teams.each do |t|
	  	repos = Octokit.team_repositories t[:id]
	  		repos.each do |r|
	  			members.each do |m|
	  				user = Octokit.user m[:login]
	  				userrepos = Octokit.list_repositories m[:id]
	  				puts userrepos
	  					userrepos.each do |ur|
	  						
					   			csv << [t[:id], t[:name], r[:id], r[:name], r[:private], r[:url], r[:description], ur[:type], m[:id],m[:login], m[:html_url], user.name, user.email] # etc
	  						
	  						
	  					end
	  			end
	  		end
  	end
end