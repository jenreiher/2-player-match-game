#@p1_score = 3
#@p2_score = 3
current_player = @players[1]

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
	

def make_question(current_player)
	rand_num = Random.new
	@rand_num1 = rand_num.rand(10)
	@rand_num2 = rand_num.rand(10)
	"#{current_player} What does #{@rand_num1} plus #{@rand_num2} equal?"
end

def print_score
	"The score is currently:
			#{@players[0][:name]} => #{@players[0][:score]}
			#{@players[1][:name]} => #{@players[1][:score]}"
end


=begindef game_play(x) 
	loop until someone loses all their lives
		
		print make_question
		player_answer = gets.chomp
		if player_answer != @rand_num1 + @rand_num2
			@players[:score] -1
			print_score
			else
			@players[:score]
		end
	break loop
end =end


