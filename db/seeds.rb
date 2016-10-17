# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
(1..10).each do |i|
  Product.create(name:"#{i}_name",type_of_product: "#{i}_type",model:"#{i}_model",
                 quantity: "#{i}_quantity",price: "#{i}_price",come_from: "#{i}_from")
end