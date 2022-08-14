def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"

    students = []

    name = gets.chomp

    while !name.empty? do
        puts "Please enter student's cohort"
        cohort = gets.chomp.to_sym
            if cohort.empty?
                cohort = "TBC"
            end
        students << {name: name, cohort: cohort}
            if students.length == 1
                puts "Now we have #{students.length} student"
            else    
                puts "Now we have #{students.length} students"
            end
        name = gets.chomp
    end
    students
end

def print_header
    puts "The students of Villains Academy"
    puts "-------------"
end

def print(students)
    cohort_groups = {}
    students.each do |student|
   
        cohort = student[:cohort]

        if cohort_groups[cohort] == nil
            cohort_groups[cohort] = []
        end
        cohort_groups[cohort] << student[:name]
    end

    cohort_groups.map do |student|
        puts student
    end
end

def print_footer(names)
    if names.length == 1 
        puts "Overall, we have #{names.length} great student".center(50)
    else
        puts "Overall, we have #{names.length} great students".center(50)
    end
end

students = input_students
#call methods
if students.length != 0
    print_header
    print(students)
    print_footer(students)
end