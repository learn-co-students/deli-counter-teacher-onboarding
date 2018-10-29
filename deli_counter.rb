#!/usr/bin/env ruby

katz_deli = []

def line(patron_queue)
    queue_print = patron_queue.each_with_index.map {|patron, index| (index+1).to_s+". "+patron}.join(" ")
    puts patron_queue.size() > 0 ? "The line is currently: #{queue_print}" : "The line is currently empty."
end

def take_a_number(patron_queue, new_patron_name)
    patron_queue << new_patron_name
    puts "Welcome, #{new_patron_name}. You are number #{patron_queue.size()} in line."
end

def now_serving(patron_queue)
    puts patron_queue.size() > 0 ? "Currently serving #{patron_queue.shift()}." : "There is nobody waiting to be served!"
end

# Write your code here.


