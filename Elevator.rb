class Elevator
	@@max_floor = 100

	attr_accessor :floor

	def initialize
		@floor = 1
	end

	def self.get_max_floor
		@@max_floor
	end

	def go_up(num_of_floors)
		@floor += num_of_floors
	end

	def go_down(num_of_floors)
		@floor -= num_of_floors
	end

	def greet
		if @floor == 11
			puts "Welcome to the 11th floor. Let the fun begin!!"
		elsif @floor == 12
			puts "Welcome to the 12th floor. Let the fun begin!!"
		elsif @floor == 13
			puts "Welcome to the 13th floor. Let the fun begin!!"
		elsif @floor % 10 == 1
			puts "Welcome to the #{@floor}st floor. Let the fun begin!!"
		elsif @floor % 10 == 2
			puts "Welcome to the #{@floor}nd floor. Let the fun begin!!"
		elsif @floor % 10 == 3
			puts "Welcome to the #{@floor}rd floor. Let the fun begin!!"
		else
			puts "Welcome to the #{@floor}th floor. Let the fun begin!!"
		end
	end

	def play_music
		puts "Sha La La La .... Oh Oh Oh"
	end
end

elevator = Elevator.new

loop do
	print "Enter a direction (UP or DOWN) or QUIT: "
	direction = gets.chomp.upcase
		
	if direction == "UP"
		print "Enter the number of floors: "
		num_of_floors = gets.chomp.to_i

		current_floor = elevator.floor

		if elevator.floor + num_of_floors <= Elevator.get_max_floor
			elevator.go_up(num_of_floors)
			if current_floor != elevator.floor
				elevator.play_music
				elevator.greet
				puts "------------------------------------------------------------"
			else
				puts "Please enter a number for floor(s) !!"
				puts "------------------------------------------------------------"
			 end
		else
			puts "The elevator is unable to go up #{num_of_floors} floors."
			puts "Please make another selection."
			puts "------------------------------------------------------------"
		end

	elsif direction == "DOWN"
		print "Enter the number of floors: "
		num_of_floors = gets.to_i

		current_floor = elevator.floor

		if elevator.floor-num_of_floors > 0
			elevator.go_down(num_of_floors)
			if current_floor != elevator.floor
				elevator.play_music
				elevator.greet
				puts "------------------------------------------------------------"
			else
				puts "Please enter a number for floor(s) !!"
				puts "------------------------------------------------------------"
			 end
		else
			puts "The elevator is unable to go down #{num_of_floors} floors."
			puts "Please make another selection."
			puts "------------------------------------------------------------"
		end
	elsif direction != "QUIT"
		puts direction + " is not an option. Please try again."
		puts "------------------------------------------------------------"
	end

	break if direction == "QUIT"
end

puts
puts "You no longer want to ride the elevator."