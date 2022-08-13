def interactive_menu
    students = []
    loop do
        puts "press 1 to Input students"
        puts "press 2 to show the students"
        puts "press 9 to exit"

        user_choice = gets.chomp

        case user_choice
            when "1"
                students = input_students
            when "2"
                print_header
                print(students)
                print_footer(students)
            when "9"
                break
            else 
                puts "I don't recognise this input, please try again."
        end
    end

end

def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"

    students = []

    name = gets.chomp

    while !name.empty? do
        students << {name: name, cohort: :november}
        puts "Now we have #{students.length} students"
        name = gets.chomp
    end
    students
end

def print_header
    puts "The students of Villains Academy"
    puts "-------------"
end

def print(students)
    students.each do |student|
        puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
end

def print_footer(names)
    puts "Overall, we have #{names.length} great students"
end

#call methods
interactive_menu
