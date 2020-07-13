# Write your code here.

def now_serving(arr)
   
  if arr.length == 0
   puts "There is nobody waiting to be served!"
  else
   puts "Currently serving " + arr[0]+"."
   arr.shift
  end
end 

def take_a_number(arr,str)
   arr.push(str)
   num = arr.length
   puts "Welcome, #{str}. You are number #{num} in line."

end

def line(arr)
  
   str = ""
   i = 1
   if arr.length == 0
      puts "The line is currently empty."
   else 
      
      line = "The line is currently:"
      arr.each.with_index(1) do |person, i|
        str << " #{i}. #{person}"
      end
      str = line + str
      puts str
   end
end