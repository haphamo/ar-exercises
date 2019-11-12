require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@total_revenue = Store.sum("annual_revenue")
@number_of_stores = Store.count

puts "The total revenue is $#{@total_revenue}."

@average = @total_revenue/@number_of_stores

puts "The average annual revenue is $#{@average}."
# Find stores that generate =< 1M, chain where and size(or count)

@results = Store.where("annual_revenue >= ?", 1000000).count

puts "Number of stores that make 1M or more: #{@results}."