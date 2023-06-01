# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = {
  name: 'Dishoom',
  address: '7 Boundary St, London E2 7JE',
  phone_number: '07799727043',
  category: 'chinese'
}
pizza_east = {
  name: 'Pizza East',
  address: '56A Shoreditch High St, London E1 6PQ',
  phone_number: '07799727043',
  category: 'italian'
}

le_brasseur = {
  name: 'Le Brasseur',
  address: 'Rue du Marché aux Herbes 110, 1000 Bruxelles',
  phone_number: '02 511 55 83',
  category: 'belgian'
}

moules_frites_delight = {
  name: 'Moules Frites Delight',
  address: 'Rue du Marché aux Herbes 110, 1000 Bruxelles',
  phone_number: '02 511 55 83',
  category: 'belgian'
}

sakura_sushi_bar = {
  name: 'Sakura Sushi Bar',
  address: '106-0041 Tokyo-to, Minato-ku, Azabudai, 1 no 9 no 12',
  phone_number: '03-3589-4412',
  category: 'japanese'
}

zen_teppanyaki = {
  name: 'Zen Teppanyaki',
  address: '106-0041 Koyoto-to, Minato-ku, Azabudai, 1 no 9 no 12',
  phone_number: '03-3589-4434',
  category: 'japanese'
}

[dishoom, pizza_east, le_brasseur, moules_frites_delight, sakura_sushi_bar, zen_teppanyaki].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
