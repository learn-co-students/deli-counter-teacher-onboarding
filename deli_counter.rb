# Write your code here.
def line(array_arg)
  if array_arg == []
    puts "The line is currently empty."
  else
    statement = ["The line is currently:"]
    array_arg.each_with_index {
      |val, index| statement.push("#{index + 1}. #{val}")
    }
    puts statement.join(" ")
  end
end

def take_a_number(array_arg, person)
  if array_arg == []
    puts "Welcome, #{person}. You are number 1 in line."
    array_arg.push(person)
  else
    array_arg.push(person)
    position = array_arg.index(person)
    puts "Welcome, #{person}. You are number #{position + 1} in line."
  end
end

def now_serving(array_arg)
  if array_arg == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array_arg.first()}."
    array_arg.shift()
  end
end
