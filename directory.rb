#print student list
students = [
    "Dr. Hannibal Lecter",
    "Darth Vader",
    "Nurse Ratched",
    "Michael Corleone",
    "Alex DeLarge",
    "The Wicked Witch of the West",
    "Terminator",
    "Freddy Krueger",
    "The Joker",
    "Joffrey Baratheon",
    "Norman Bates"
]

puts "The students of Villains Academy"
puts "-------------"
#print total student number
students.each do |student|
    puts student
end
#total
print "Overall, we have #{students.count} great students"