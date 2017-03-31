def echo(word)
	word
end

def shout(phrase)
	phrase.upcase
end

def repeat(phrase, n = 2)
	((phrase + " ") * n).strip!
end

def start_of_word(word, n=1)
	word[0..(n-1)]
end

def first_word(phrase)
	(phrase.split)[0]
end 

def titleize(input)
	little_words = %w[the over and]
	title = ""
	
	input.split.each_with_index do |word, idx|
		if idx == 0
			title << word.capitalize + " "
		elsif !little_words.include?(word)
			title << word.capitalize + " "
		else 
			title << word + " "
		end
	end

	title.strip!
  	return title

end