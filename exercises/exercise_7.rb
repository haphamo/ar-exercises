require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Validations
# Employees have a hourly_rate that is a number (integer) between 40 and 200

# Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
# Stores must always have a name that is a minimum of 3 characters
# Stores have an annual_revenue that is a number (integer) that must be 0 or more


puts "Please enter a store name."
@input = gets.chomp


new_store = Store.create(name: @input)

# puts new_store.valid?
puts "Error": new_store.errors.messages



