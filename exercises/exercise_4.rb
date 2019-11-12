require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
# Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
# Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

Store.create([{name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true}, {name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false}, {name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true}]) do |s|
end

puts "The total number of stores: #{Store.count}." 

# Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_store

@mens_store = Store.where(mens_apparel: true)


# @mens_store {|store| puts "Store that carry men's apparely #{store}"}

@mens_store.each do | store |
  puts "#{store.name} carries men's apparel and has an annual revenue of #{store.annual_revenue}."
end

@womens_store = Store.where(womens_apparel:true).where("annual_revenue < ?", 1000000)

@womens_store.each do | store |
  puts "#{store.name} carries women's apparel and has an annual revenue of #{store.annual_revenue}."
end

