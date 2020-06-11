require 'faker'

Flat.destroy_all
4.times do
  pic = "https://source.unsplash.com/300x300/?flats"
  flat = Flat.create!(name: Faker::Address.city,
                      address: Faker::Address.street_address,
                      picture_url: pic,
                      description: 'brand new flat for renting',
                      price_per_night: rand(150..500),
                      number_of_guests: rand(1..5))
  flat.save
end
