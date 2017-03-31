class Dictionary

	attr_reader :entries

	def initialize
		@entries = {}
	end
	
  	def add(entry)
    	if entry.is_a? Hash
      		@entries.merge!(entry)
    	else
      		@entries.merge!({entry => nil})
    	end
	end
	
	def keywords
		return @entries.keys.sort
	end

	def include?(word)
		@entries.keys.include?(word)
	end

	def find(string)
		result = {}
		if @entries.keys.count == 0
			return @entries
		else
			@entries.each  {|entry, definition| result[entry] = definition if entry.include?(string)}
			return result
		end
	end

	def printable
		(@entries.sort.map {|key,value| "[#{key}] \"#{value}\""}).join("\n")
	end

end



