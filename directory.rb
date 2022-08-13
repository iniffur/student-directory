@students = []

def interactive_menu
    loop do
        print_menu   
        process(gets.chomp)
    end
end

def print_menu
    puts "press 1 to Input students"
    puts "press 2 to show the students"
    puts "press 9 to exit"
end

def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"#

    name = gets.chomp

    while !name.empty? do
        @students << {name: name, cohort: :november}
        puts "Now we have #{@students.length} students"
        name = gets.chomp
    end
end

def show_students
    print_header
    print_student_list
    print_footer
end

def process(user_choice)
    case user_choice
        when "1"
            students = input_students
        when "2"
            show_students
        when "9"
            exit
        else 
            puts "I don't recognise this input, please try again."
    end
end

def print_header
    puts "The students of Villains Academy"
    puts "-------------"
end

def print_student_list
    @students.each do |student|
        puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
end

def print_footer
    puts "Overall, we have #{@students.length} great students"
end

#call methods
interactive_menu
