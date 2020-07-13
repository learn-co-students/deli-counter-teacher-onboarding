# Write your code here.
def line(queue)
  if queue.empty?
    puts "The line is currently empty."
  else
    str = "The line is currently:"
    n = 0
    while n < queue.size
      str += " #{n+1}. #{queue[n]}"
      n+=1
    end
    puts str
  end
end

def take_a_number(deli, person)
  deli << person
  puts "Welcome, #{person}. You are number #{deli.size} in line."
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli.shift}."
  end
end
