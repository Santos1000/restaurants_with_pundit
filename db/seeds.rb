# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating Restaurants..."
Restaurant.create!(
  name: 'Light & Spacious Garden Restaurant London',
  address: Faker::Address.full_address,
  description: 'A lovely summer feel for this spacious garden Restaurant. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  picture_url: 'https://images.unsplash.com/photo-1505691723518-36a5ac3be353?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'
)

Restaurant.create!(
  name: 'Rent a beautiful and modern house',
  address: Faker::Address.full_address,
  description: "The 63 M2 Apartment is composed of an entrance, living room opening onto a beautiful terrace, kitchen area equipped,he residence benefits from a swimming pool, tennis courts, large park and children's play area.",
  picture_url: 'https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'
)

Restaurant.create!(
  name: 'Apartment in Santa Luzia with two beautiful terraces',
  address: Faker::Address.full_address,
  description: 'Hello, I rent for a period of one month or three months (January, February, March and April) Â top floor apartment with two beautiful terraces on Santa-Luzia. more details in private message. ',
  picture_url: 'https://images.unsplash.com/photo-1501183638710-841dd1904471?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80'
)

Restaurant.create!(
  name: 'Stylish House Close to River Thames',
  address: Faker::Address.full_address,
  description: 'Lovely warm comfortable and stylishly furnished house. Private bedroom and bathroom with shared living areas.',
  picture_url: 'https://images.unsplash.com/photo-1493809842364-78817add7ffb?w=1200'
)

Restaurant.create!(
  name: 'Beautiful apartment in Carvoeiro, Algarve',
  address: Faker::Address.full_address,
  description: 'Nice sunny apartment with all mod cons for rent in the center of Carvoeiro. Bedrooms, bathroom, kitchen open to living room, courtyard with garden furniture, two small terraces. On two levels. Swimming pool in the (small) residence.',
  picture_url: 'https://images.unsplash.com/photo-1613013441633-785518cf90b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80'
)

Restaurant.create!(
  name: 'St Pancras Clock Tower Guest Suite',
  address: Faker::Address.full_address,
  description: 'A mini apartment within the clock tower apartment at St Pancras Station, with its own en suite bathroom and kitchen and sitting area.',
  picture_url: 'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=1200'
)

puts "Finished!"
