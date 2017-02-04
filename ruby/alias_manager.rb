#PSEUDOCODE:

#Take in user-input for name
#swap the first and last name
#change all the vowels to the next vowel in (aeiou ie a-->e)
#change all the consonants to the next consonant (ie b---c)


#take username and store into array that produces first and last name
# username = [first, last]
puts "What is your name"
user_name = gets.chomp

#splits user_name input into first and last (2 strings)
# user_name.split(' ')

#Store split strings into array

name_storage = user_name.split(' ')
#swap the two strings (.reverse_each)
swap_name = ""
name_storage.reverse_each { |name_storage| swap_name += "#{name_storage} " }
p swap_name


#produce method for switching vowels
user_name.chars 
	if "a","e","i","o","u"

#produce methods for switching consonants
#combine new first and last name 
#print out new name 





