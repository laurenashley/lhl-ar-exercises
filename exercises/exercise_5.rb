require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_annual_revenue = Store.sum("annual_revenue")
@avg_annual_revenue = Store.average("annual_revenue")

@high_generating_stores = Store.where("annual_revenue > 1000000").count

puts "Annual Revenue for company: #{@total_annual_revenue}"
puts "Average Revenue for company: #{@avg_annual_revenue}"
puts "Stores generating more than $1M annually: #{@high_generating_stores}"