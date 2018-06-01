namespace :dev do
  task fake: :environment do
    Shopping.destroy_all

    1000.times do |i|
      Shopping.create!(name: FFaker::Product.product,
        description: FFaker::Lorem::sentence(10),
        price: ( rand(500)+1 ) * 10,
      )
    end
    puts "have created fake shoppings"
    puts "now you have #{Shopping.count} shoppings data"
  end
end