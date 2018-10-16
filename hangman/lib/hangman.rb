class Hangman
  
  def initialize(word)
    @word = word
	@user_word = []
	@fails = 0
	@allowed_attempts = 12
  end

  def set_output(char = "", positions = [])

  		# game setup: convert chosen word into underscores
	  	if @user_word.any? == false
		  	i = 0 
		  	while i < @word.length 
		  		@user_word[i] = "_"
		  		i += 1
			end
		end


		# loop through array and replace with character in specified positions
		positions.each do |i|
			@user_word[i] = char
		end	

		@user_word

  end

  # searches array for position of the character
  def position_in_array(char)
  	word.each_index.select{|i| word[i] == char}
  end


  # break string up into array
  def word
  	correct_output = @word.scan /\w/
  end


  # process the guess
  def guess(char)

  	 # if character is in array then check which position(s) this letter is in the array
  	 if @word.include? char 
		set_output(char, position_in_array(char))
	else
		@fails += 1
	end

	if @fails >= @allowed_attempts 
		# end game
		return "Uh oh. You lost"
	end


	@user_word
  end


end

