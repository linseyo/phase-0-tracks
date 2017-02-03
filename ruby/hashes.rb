# Prompt designer for all of the following info:
# :name
# :age
# :number_of_kids
# :decor_theme

# Convert all user input for each 
# print the hash once user is done
# give user chance to update a key unless "none" <--- skip
# figure out which method can convert a string to a symbol 
# print latest version of hash
# exit


puts "Welcome Interior Designers, Please enter Client info"

#creates a new Hash with user input 
application = Hash.new

puts "What is your clients name?"
application [:"name"] = gets.chomp

puts "What is their age?"
application [:"age"] = gets.chomp

puts "How many kids do they have?"
application [:"number_of_kids"] = gets.chomp

puts "Prefered decor theme"
application [:"decor_theme"] = gets.chomp

# puts "What type of pets do you have?"
# application [:"pets"] = gets.chomp

# puts "Do you prefer carpet or hardwood floors"
# application [:"floors"] = gets.chomp

#prints hash
puts application

#update hash
puts "Do you need to make any edits to a particular section? (yes or none) "
answer = gets.chomp

if answer == "yes"
	puts "which section?"
	edit = gets.to_sym
	puts "What changes need to be made?"
	changes = gets.chomp 
else answer == "none"
	puts "Awesome!"
end


puts application[edit] = changes  # <--- use to view changes to hash

puts application
puts "Thanks for fillin' this out!"