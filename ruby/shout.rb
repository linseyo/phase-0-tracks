# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + ":("
# 	end
# 	def self.yelling_happily(words)
# 		words + "!!!" + ":)"
# 	end

# end


# Shout.yell_angrily('I AM TIRED')
# Shout.yelling_happily('FREEDOM')

module Shout
	def yelling(words)
		puts "#{words}".upcase + "!!!"
	end

	def crying(words)
		puts "#{words}".downcase + "..."
	end
end

class Student
	include Shout
end

class Teacher
	include Shout
end

child = Student.new
child.crying('teacher, Billy pushed me')
puts "-----------------"
teacher = Teacher.new
teacher.yelling('billy, detention!')