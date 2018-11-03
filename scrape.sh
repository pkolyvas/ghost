#!/bin/bash

echo "Scraping for Membership List..."
bundle exec ruby list-org-members.rb
echo "Done."
echo ""
echo "Scraping for Organization Teams..."
bundle exec ruby list-org-teams.rb
echo "Done."
echo ""
echo "Scraping for Organization Repositorries..."
bundle exec ruby list-org-repos.rb
echo "Done."
echo ""
echo "Scraping for Organization Team Membership..."
bundle exec ruby list-org-teams-members.rb
echo "Done."
echo "Have a great day."