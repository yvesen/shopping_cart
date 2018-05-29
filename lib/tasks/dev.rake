namespace :dev do
  task fake: :environment do
    Shopping.destroy_all

    1000.times do |i|
      Shopping.create!(name: "shopping#{i.to_s}",
        description: "Here is description of the restaurant",
        price: "200"
      )
    end
    puts "have created fake shoppings"
    puts "now you have #{Shopping.count} shoppings data"
  end
end