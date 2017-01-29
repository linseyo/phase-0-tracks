# # #PSEUDOCODE for Encrypt method
# # #ABC --> BCD 
# # #Establish string 
# # #Use .index to establish letter position
# # #use index values to print specific letters with their letter position
# # #Then use .next to give us the proceeding letter

# # #ABC-->BCD
# # #str = "abc"
# # #str.index("a")
# # #str.index("b")
# # #str.index("c")
# # #str[1..2] += str[2].next 

# def encrypt (str)
#   #puts "#{str.length}"
#    str[1..-1] += str[-1].next 
#    str.clone
# end
# #how to make the index condition vary based on string lenth?

# #encrypt("swordfish")


# # #PSEUDOCODE for decrypt method
# # #Reverse the process above
# # #Use .index to find number position for proceeding letter
# # #Use [-index] to display desired letter and preceeding positon 
# # #Use entire alphabet as string 
# # #Use .index to identify desired letter 
# # #Combine alphabet string (with specified letter) to the old string

# # #BCD --> ABC
# # #str = "bcd"
# # #str.index("b")
# # # str.index("c")
# # str.index("d")
# # line = "abcdefghijklmnopqrstuvwxyz"
# # line.index("a")
# # #Using [-index] goes backwards
# # line[0] += str[0..1]


# def decrypt (str)
#   #line = "abcdefghijklmnopqrstuvwxyz"
#   #Using [-index] goes backwards

#   str[0] += str[1..-2]
# end

# decrypt(encrypt("swordfish"))



#//////////////////////////////////////////////////actual code below
puts "Would you like to Encrypt or Decrypt a password?"
pwd = gets.chomp


puts "Password Please"
str = gets.chomp

if "#{pwd}" == "encrypt"

	def encrypt(str)
   str[1..-1] += str[-1].next 
   #str.clone <-- used when using a methond within a method (i.e decrypt(encrypt("swordfish"))

  end
  puts encrypt(str)

else 
  
	def decrypt(str)
  str[0] += str[1..-2]
  end
  puts decrypt(str)
  
end

puts "I'm done here, bye..."

