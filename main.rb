
@players = [
	{
		name: 'Player 1',
		score: 3
	}, 
	{
		name: 'Player 2',
		score: 3
	}
]

#works
def make_question(current_player)
	rand_num = Random.new
	rand_num1 = rand_num.rand(10)
	rand_num2 = rand_num.rand(10)
	@correct_answer = (rand_num1 + rand_num2)
	puts "#{current_player[:name]}... What does #{rand_num1} plus #{rand_num2} equal?"
end

#works
def prompt_for_answer
	@player_answer = gets.chomp.to_i
end

#works
def verify_answer(current_player)
	puts "player answer is #{@player_answer}"
	puts "the answer should be #{@correct_answer}"
	puts "verifying score"
	if @player_answer == @correct_answer
			puts "correct! :)"
		else
			puts "wrong answer"
			#does not work
			current_player[:score]-1
			print_score
	end
end

# works
def print_score
	puts "The score is currently:
	#{@players[0][:name]} => #{@players[0][:score]}
	#{@players[1][:name]} => #{@players[1][:score]}"
end

# not called yet
def change_player
	@players.rotate!
end

# in progress
def game_play 
	current_player = @players[0]

	make_question(current_player)
	prompt_for_answer
	verify_answer(current_player)
end 

game_play
