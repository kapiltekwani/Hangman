#require './figure'
require './Game'
class Player
	include GAME
	include FIGURE
end

player1=Player.new()
player1.dictionary

loop do
	player1.game_run 
  puts "do you want to continue (YES/NO)"
	choice = gets.chop!
	if choice != 'yes' ||'YES'
			break
	else
			next
			  
	end
end

