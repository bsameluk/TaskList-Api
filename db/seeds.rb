# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Project.create(name: "Google").tap do |project|
  project.tasks.create(name: "Create Youtube")
  project.tasks.create(name: "Create Google Drive")
  project.tasks.create(name: "Create Google Docs")
end

Project.create(name: "Facebook").tap do |project|
  project.tasks.create(name: "Create Facebook Ads")
  project.tasks.create(name: "Create Facebook Page")
  project.tasks.create(name: "Rename it to Meta")
end

Project.create(name: "Twitter").tap do |project|
  project.tasks.create(name: "Create Twitter Ads")
  project.tasks.create(name: "Create Twitter Page")
  project.tasks.create(name: "Sell it to Elon Musk")
end
