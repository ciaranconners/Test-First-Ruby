class Friend

	def greeting(to_whom = "")
		if to_whom.empty?
		  return "Hello!"
		else
		  return "Hello" + ", " + to_whom + "!"
		end
  	end

end