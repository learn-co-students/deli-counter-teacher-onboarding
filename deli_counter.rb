#Defines an empty array for the deli
katz_deli = []

#Displays the current people waiting to be served
def line(deli)
  if deli.size == 0
    puts "The line is currently empty."
  else
    i = 0
    response = "The line is currently:"
    loop do
      i += 1
      response = "#{response} #{i.to_s}. #{deli[i-1]}"
      if i == deli.size
        puts response
        break
      end
    end
  end
end

#Adds someone to the deli's line
def take_a_number(deli, name)
  puts "Welcome, #{name}. You are number #{deli.push(name).size} in line."
end

#Serves the next person in line and removes them from it
def now_serving(deli)
  loop do
    if deli.size == 0
      puts "There is nobody waiting to be served!"
      break
    else
      puts "Currently serving #{deli[0]}."
      deli.shift
      break
    end
  end
end
