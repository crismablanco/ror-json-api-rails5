# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
RentalUnit.delete_all
Random.new_seed
(1..1000).to_a.each do |indice|
  RentalUnit.new(address: "Adress # #{indice}", rooms: rand(4), bathrooms: rand(2), price_cents: rand(100000..1000000), user_id: User.first.id)
end