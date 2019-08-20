#!/bin/bash
d=$(date +%Y-%m-%d)


echo "Scraping for Membership List..."
bundle exec ruby list-org-members.rb
mv org-members.csv org-members_$d.csv
echo "Done."
echo ""
echo "Scraping for Organization Teams..."
bundle exec ruby list-org-teams.rb
mv org-teams.csv org-teams_$d.csv
echo "Done."
echo ""
echo "Scraping for Organization Repositories..."
bundle exec ruby list-org-repos.rb
mv org-repos.csv org-repos_$d.csv
echo "Done."
echo ""
echo "Scraping for Organization Team Membership..."
bundle exec ruby list-org-teams-members.rb
mv org-teams-membership.csv org-teams-membership_$d.csv
echo "Done."
echo "Have a great day."