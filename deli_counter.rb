katz_deli = []

def take_a_number(deli, name)
	deli.push(name)
	puts "Welcome, "+name+". You are number "+deli.length.to_s+" in line."
end

def line(deli)
	line_str = "The line is currently"
	if deli.length == 0
		puts line_str + " empty."
	else
		line_str += ":"
		deli.map.with_index{|name, index| line_str += " "+(index+1).to_s + ". " + name}
		puts line_str
	end
end

def now_serving(deli)
	name = deli.shift
	if name
		puts "Currently serving " + name + "."
	else
		puts "There is nobody waiting to be served!"
	end
end