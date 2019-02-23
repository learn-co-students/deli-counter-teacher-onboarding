def line deli
  if deli.length == 0
    puts 'The line is currently empty.'
  else
    names = ""
    for number in 1..deli.length
      names = "#{names} #{number}. #{deli[number - 1]}"
    end

    puts "The line is currently:#{names}"
  end
end

def take_a_number deli, name
  deli.push name
  puts "Welcome, #{name}. You are number #{deli.length} in line."
end

def now_serving deli
  if deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    person = deli.shift
    puts "Currently serving #{person}."
  end
end
