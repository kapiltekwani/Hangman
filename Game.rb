require './figure'
module GAME
	include FIGURE
	def dictionary 
		begin
  	f = File.open('dict.txt')
		$MYARRAY=f.readlines
		rescue
		puts 'Filename not present'
		end	
	end
	def print_score	
	yield	
	end	

	def round() 			#Iterates For Each Round of Game
		loop do
      puts "guess character"
			gets.chop!
			found = 0
			
			(@word.length).times do |x|
      	if($_ == @word[x])
					@status[x] = $_
					found = 1
			  end
			end
		
				if(found == 1)
	      	puts"Right Guess"
				else
					@max_chances = @max_chances-1
				end
			
			print_hangman() 
	    puts "\n"
			print @status
	    puts " Chances Left #{@max_chances - 1 }";
      
    	if(@max_chances < 2 )
      	puts " Sorry Max Chances Exceeded "
				print_score { puts " Your Score is #{@score}" }
				break
      end

			if(@status.to_s == @word)	 
     		puts " Congrats You Guessed it Right "
				@score =@score.to_i + @word.length
       	print_score { puts " Your Score is #{@score}" }     
				break
			end
  	end
		
	end
	
	def print_hangman()    			 # print Hangman
		case @max_chances

			when 8
			figure0

			when 7
			figure1

			when 6
			figure2

			when 5
			figure3

			when 4
			figure4

			when 3
			figure5

			when 2
			figure6

			when 1
			figure7
    end 
	end

		 	
	def game_run()
		loop do
			
			@max_chances=8
			@word=$MYARRAY[rand($MYARRAY.length)]

			puts @word	
			@word.chop!

			wordlength = @word.length
			puts "you have to guess the given word to earn #{@word.length} points" 
			@status="XXX"
	
			(wordlength).times do |x| 
	 		@status[x]="X"
      print " X " 
			end
  	 round()
	
  	 if(@max_chances< 2)
    	break
   	 end
		end
	end  
end


