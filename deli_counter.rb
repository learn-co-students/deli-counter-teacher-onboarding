# Write your code here.
katz_deli = []
def line(katz_deli)
    message = "The line is currently"
    if katz_deli.size == 0
        message += " empty."
    else
        message += ":"
        place = 1
        katz_deli.each do |person|
            message += " #{place}. #{person}"
            place += 1
        end
    end
    puts message
end

def take_a_number(katz_deli, name)
    katz_deli.push(name)
    place = katz_deli.size
    puts "Welcome, #{name}. You are number #{place} in line."
    return katz_deli
end

def now_serving(katz_deli)
    if katz_deli.size == 0
        puts "There is nobody waiting to be served!"
    else
        now_person = katz_deli.shift
        puts "Currently serving #{now_person}."
    end
end