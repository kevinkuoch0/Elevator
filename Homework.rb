# class Calculator
# 	attr_accessor :num1, :num2
# 		def initialize num1, num2
# 			@number1 = num1
# 			@number2 = num2
# 		end

# 		def add
# 			@number1+@number2
# 		end

# 		def subtract
# 			@number1-@number2
# 		end

# 		def multiply
# 			@number1*@number2
# 		end
		
# 		def divide
# 			@number1/@number2
# 		end
# 	end		
# calc = Calculator.new(5,3)
# 	puts "This will add #{calc.add}"
# 	puts "This will subtract #{calc.subtract}"
# 	puts "This will multiply #{calc.multiply}"
# 	puts "This will divide #{calc.divide}"


class Elevator

	attr_accessor :floor

	def initialize
		@floor = 1
	end

	def go_up(num_floors)
		@floor = @floor+num_floors
	end

	def go_down(num_floors)
		@floor = @floor-num_floors
	end

	def greet
		puts "You are on floor number #{floor}. Have a nice day!"
	end
end

elevator = Elevator.new
	
	puts "Do you want to go up or down?"
	direction = gets.chomp.upcase
	if direction=="DOWN"
		puts "How many floors?"
		num_floors = gets.to_i	
		elevator.go_down(num_floors)
		elevator.greet
	elsif direction=="UP"
		puts "How many floors?"
		num_floors = gets.to_i
		elevator.go_up(num_floors)
		elevator.greet
	else 
		puts "You did not enter up or down."
	end	