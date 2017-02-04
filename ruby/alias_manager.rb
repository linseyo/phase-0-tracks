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
#swap the two strings (.reverse
name_swap_storage = user_name.split(' ')
name_swap_storage.reverse!


# swap_name = ""
# name_swap_storage.reverse_each { |name_swap_storage| swap_name += "#{name_swap_storage} " }
# p swap_name


#produce method for switching vowels
alias_name.class
alias_name.map! { |vowel| vowel.tr("aeiou", "eioua")}
#p alias_name

#produce methods for switching consonants

alias_name.map! { |const| const.tr("bcdfghjklmnpqrstvwxyz", "cdfghjklmnpqrstvwxyzb")}

#combine new first and last name 
#print out new name 





