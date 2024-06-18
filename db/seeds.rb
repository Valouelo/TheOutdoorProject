# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

luka = User.create!(
  username: "luka",
  email: "lulu@gmail.com",
  password: "123456",
  status: "avancé"
)

bateau = Activity.create!(
  date: 17 / 06 / 2024,
  time: "14h",
  user_id: luka.id,
  price: 35,
  level: "débutant",
  description: "journée wakeboard et apéro",
  duration: 6,
  category: "nautique"
)

booking = Booking.create!(
  user_id: luka.id,
  activity_id: bateau.id
)
