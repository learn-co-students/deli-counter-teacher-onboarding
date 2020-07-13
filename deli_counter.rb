def take_a_number(people, person)
    spot_in_line = people.length + 1
    people.push(person)
    puts('Welcome, ' + person + '. You are number ' + spot_in_line.to_s + " in line.")
end

def line (people)
    if people.length == 0 
        puts "The line is currently empty."
    else 
        str = ""
        people.each { |person| str += (1 + people.index(person)).to_s + ". #{person} "}
        puts "The line is currently: " + str.strip
    end
end

def now_serving(people)
    if !people.empty?
        puts "Currently serving " + people.at(0) + "."
        people.shift
    else
        puts "There is nobody waiting to be served!"
    end
end

katz_deli = []
take_a_number(katz_deli, "Ada")
 #=> Welcome, Ada. You are number 1 in line.

take_a_number(katz_deli, "Grace") 
#=> Welcome, Grace. You are number 2 in line.

take_a_number(katz_deli, "Kent") 
#=> Welcome, Kent. You are number 3 in line.

line(katz_deli) 
#=> "The line is currently: 1. Ada 2. Grace 3. Kent"
 
  now_serving(katz_deli) #=> "Currently serving Ada."
 
  line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"
 
  take_a_number(katz_deli, "Matz") #=> Welcome, Matz. You are number 3 in line.
 
  line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"
 
  now_serving(katz_deli) #=> "Currently serving Grace."
 
  line(katz_deli) #=> "The line is currently: 1. Kent 2. Matz"