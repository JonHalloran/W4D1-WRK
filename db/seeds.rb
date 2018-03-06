# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username: 'Mike')
User.create!(username: 'Leo')
User.create!(username: 'Don')
User.create!(username: 'Rapheal')

10.times do |i|
  Artwork.create!(
    title: "Artwork#{i}",
    artist_id: ((i % 4) + 1),
    image_url: "URL#{i}"
  )
end

20.times do |i|
  ArtworkShare.create!(
    artwork_id: ((i % 10) + 1),
    viewer_id: ((i % 4) + 1)
  )
end
