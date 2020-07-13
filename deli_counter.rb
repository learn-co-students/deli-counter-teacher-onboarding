# Write your code here.

katz_deli = []

def line(deli)
    output = []
    index = 1

    if deli.size == 0
        puts "The line is currently empty."
    else
        deli.each do |name|
            output.push("#{index}.")
            index += 1
            output.push(name)
    end
    line_list = output.join(" ")
    puts "The line is currently: #{line_list}"
end
end

def take_a_number(deli, name)
    deli.push(name)
    position = deli.size
    puts "Welcome, #{name}. You are number #{position} in line."
end

def now_serving(deli)
    if deli.size == 0
        puts "There is nobody waiting to be served!"
    else
        next_person = deli.shift
        puts "Currently serving #{next_person}."
    end
end
