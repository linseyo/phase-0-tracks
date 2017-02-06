#PSEUDOCODE:

#Take in user-input for name
#swap the first and last name
#change all the vowels to the next vowel in (aeiou ie a-->e)
#change all the consonants to the next consonant (ie b---c)
#take username and store into array that produces first and last name
#splits user_name input into first and last (2 strings)
#Store split strings into array
#swap the two strings (.reverse)
#produce method for switching vowels
#produce methods for switching consonants
#combine new first and last name 
#print out new name & old name
# Magically loop this thing until user types QUIT


loop do
puts "What is your name?"
user_name = gets.chomp.downcase
name_generator = Array.new

  if user_name != "quit"
    # Array to store initial user input
    user_name_storage = []
    user_name_storage << user_name
    # Split user input into two strings
    name_swap_storage = user_name.split(' ')
    # Reverse string order then store in new array
    reverse_name = name_swap_storage.reverse!
    p reverse_name
    # method for switching vowels
    reverse_name.map! { |vowel| vowel.tr("aeiou", "eioua")}
    # method for switching cosonants
    reverse_name.map! { |const| const.tr("bcdfghjklmnpqrstvwxyz", "cdfghjklmnpqrstvwxyzb")}
    # Store new names in array
    alias_name = reverse_name.join(' ')
    p alias_name
    valid_input = false
  else 
    puts "Got It Agent!"
    break if user_name == "quit"
  end


# Produce hash in which key = original user input name & value = alias generated name
name_generator << [user_name, alias_name]
name_generator.each do |user_name, alias_name|
	puts "#{user_name.capitalize} is actually #{alias_name.capitalize} "
end
end