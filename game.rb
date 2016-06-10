require_relative 'players'
require 'colorize'

class Game
	
	def start_game
		player1 = Player.new(:'Player1')
		player2 = Player.new(:'Player2')
		@players << player1, player2
	end

end

def game_play 
	loop do
		current_player = @players[0]
		puts "#{current_player}"
		make_question(current_player)
		prompt_for_answer
		verify_answer(current_player)
		@players.rotate!
		break if current_player[:lives] == 0
	end
end 

#works
def make_question(current_player)
	rand_num = Random.new
	rand_num1 = rand_num.rand(20)
	rand_num2 = rand_num.rand(20)
	@correct_answer = (rand_num1 + rand_num2)
	puts "#{current_player[:name]}... What does #{rand_num1} plus #{rand_num2} equal?"
end

#works
def prompt_for_answer
	@player_answer = gets.chomp.to_i
end

#works
def verify_answer(current_player)

	if @player_answer == @correct_answer
			puts "correct! :)"
		else
			puts "wrong answer"
			current_player[:lives] = current_player[:lives]-1
			print_score
	end
end

# works
def print_score
	puts "The score is currently:
	#{@players[0][:name]} => #{@players[0][:score]}
	#{@players[1][:name]} => #{@players[1][:score]}"
end

#game_play

game_on = Game.new
game_on.open