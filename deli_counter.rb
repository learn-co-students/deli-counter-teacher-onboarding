def line(deli)
    if deli.size == 0
        puts "The line is currently empty."
    else
        customers =[]
        deli.each.with_index(1) do |customer, index|
            customers << "#{index}. #{customer}"
        end
        puts "The line is currently: #{customers.join(" ")}" 
    end
end 

def take_a_number(katz_deli, str)
    katz_deli.push(str)
    puts "Welcome, #{str}. You are number #{katz_deli.size} in line."
end

def now_serving(deli)
     puts deli.size > 0 ? "Currently serving #{deli.shift}." : "There is nobody waiting to be served!"
end