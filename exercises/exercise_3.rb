require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

@store3 = Store.find_by(id: 3)
@store3.destroy
# Verifying delete

puts "The total number of stores is now: #{Store.count}." 

