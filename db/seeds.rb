# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


google_project = Project.find_or_create_by(name: "Google")
Task.find_or_create_by(name: "Create Youtube",      project: google_project)
Task.find_or_create_by(name: "Create Google Drive", project: google_project)
Task.find_or_create_by(name: "Create Google Docs",  project: google_project)

facebook_project = Project.find_or_create_by(name: "Facebook")
Task.find_or_create_by(name: "Create Facebook Ads",      project: facebook_project)
Task.find_or_create_by(name: "Create Facebook Page",     project: facebook_project)
Task.find_or_create_by(name: "Rename it to Meta",        project: facebook_project)

twitter_project = Project.find_or_create_by(name: "Twitter")
Task.find_or_create_by(name: "Create Twitter Ads",      project: twitter_project)
Task.find_or_create_by(name: "Create Twitter Page",     project: twitter_project)
Task.find_or_create_by(name: "Sell it to Elon Musk",    project: twitter_project)
