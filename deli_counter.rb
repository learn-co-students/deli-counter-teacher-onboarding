# Write your code here.
def line (current_line)
  if(current_line.length > 0)
    puts  "The line is currently: #{current_line.map.with_index {|person, index| "#{index+1}" + ". " + person}}".delete("[]\\\"\],")
  else
    puts "The line is currently empty."
  end
end

def take_a_number(current_line, person)
     current_line.push(person)
     puts "Welcome, " + person + ". You are number " + current_line.length.to_s + " in line."
     current_line
end

def now_serving(current_line)
  if(current_line.any?)
    puts "Currently serving " + current_line.shift + "."
  else
    puts "There is nobody waiting to be served!"
  end
end
