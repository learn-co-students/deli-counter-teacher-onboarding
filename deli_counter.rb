# Write your code here.

katz_deli = []

def line(deli)
  list = []
  index = 1

    if deli.size < 1
      puts "The line is currently empty."
    else
      deli.each do |name|
        list.push("#{index}.")
        index += 1
        list.push(name)
    end
  line_list = list.join(" ")
  puts "The line is currently: #{line_list}"
end
end

def take_a_number(deli, name)
  deli.push(name)
  position = deli.size
  puts "Welcome, #{name}. You are number #{position} in line."
end

def now_serving(deli)
  if deli.size < 1
      puts "There is nobody waiting to be served!"
  else
      next_person = deli.shift
      puts "Currently serving #{next_person}."
  end
end