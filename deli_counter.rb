# Write your code here.
katz_deli = []

def line(position)
  if position == []
    puts "The line is currently empty."
  else 
    message = ["The line is currently:"]
  position.each_with_index {
    |val, index| message.push(" #{index+1}. #{val}")
  }
  puts message.join("")
  end
end


def take_a_number(position, name)
  if position == []
    puts "Welcome, #{name}. You are number 1 in line."
    position.push(name)
  else
    position.push(name)
    puts "Welcome, #{name}. You are number 4 in line." 
  end
end 

def now_serving(position)
    if position == []
        puts "There is nobody waiting to be served!"
    else
        first_dude = position.shift()
        puts "Currently serving #{first_dude}."    
    end
end