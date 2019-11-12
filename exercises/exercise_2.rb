require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"
@store1 = Store.find_by(id:1)
@store2 = Store.find_by(id:2)
puts "The first store is #{@store1.name} and second is #{@store2.name}."
# Updated store1 name
@store1.update(name: "Vaughan Mills")
puts "Store1 new name is: #{@store1.name}"

