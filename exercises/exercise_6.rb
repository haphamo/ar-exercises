require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"
# @store1 = Store.find_by(id:1)

@store1.employees.create([{first_name: "Bubblegum", last_name: "Princess", hourly_rate: 60}, {first_name: "Finn", last_name: "Human", hourly_rate: 65}, {first_name: "Jake", last_name: "Dog", hourly_rate: 70}])


@store2.employees.create([{first_name: "Marcelline", last_name: "Vampire Queen", hourly_rate: 60}, {first_name: "Lumpy Space", last_name: "Princess", hourly_rate: 60}, {first_name: "Flame", last_name: "Princess", hourly_rate: 80}])

