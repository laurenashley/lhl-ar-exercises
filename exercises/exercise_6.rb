require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create({
  first_name: "Khurram",
  last_name: "Virani",
  hourly_rate: 60
})

@store1.employees.create({
  first_name: "Lauren",
  last_name: "Ashley",
  hourly_rate: 95
})

@store2.employees.create({
  first_name: "Alleck",
  last_name: "Boedell",
  hourly_rate: 85
})

@store2.employees.create({
  first_name: "Mike",
  last_name: "Dude",
  hourly_rate: 115
})

@store1.employees.create({
  first_name: "Trevor",
  last_name: "Burton",
  hourly_rate: 60
})

@store2.employees.create({
  first_name: "Laura",
  last_name: "Pence",
  hourly_rate: 70
})