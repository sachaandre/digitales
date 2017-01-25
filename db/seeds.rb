# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tagJson = ActiveSupport::JSON.decode(File.read('db/tag_metier.json'))
varJson = ActiveSupport::JSON.decode(File.read('db/variables.json'))


tagJson.each do |a|
  Tag.create!(a)
end

<<<<<<< HEAD
varJson = ActiveSupport::JSON.decode(File.read(''))

varJson.each do |a|
  Variable.create!(a)
=======
varJson.each do |a|
  Tag.create!(a)
>>>>>>> 173bda2ad48aa0afbd08c479cc31a2c7896a276d
end
