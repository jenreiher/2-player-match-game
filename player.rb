class Player

	attr_accessor :score
	attr_reader :name
	attr_accessor :lives

	def initialize(name, score, lives)
		@name = name
		@score = 0
		@lives = 3
	end

end