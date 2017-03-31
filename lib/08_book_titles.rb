class Book

	def title
    	@title
    end

	def title=(title) 
    	not_to_cap = %w[the and a an in of]
		edited_title = ""
		title.split.each_with_index do |word, idx|
			if idx == 0
				edited_title << word.capitalize + " "
			elsif !not_to_cap.include?(word)
				edited_title << word.capitalize + " "
			else 
				edited_title << word + " "
			end
		end
		@title = edited_title.strip!
	end

end