# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

if Rails.env.development?
  Book.create(title: "development 1")
  Book.create(title: "development 2")
  Book.create(title: "development 3")
  Book.create(title: "development 4")
  Book.create(title: "development 5")
elsif Rails.env.production?
  Book.create(title: "production 1")
  Book.create(title: "production 2")
  Book.create(title: "production 3")
  Book.create(title: "production 4")
  Book.create(title: "production 5")
end
