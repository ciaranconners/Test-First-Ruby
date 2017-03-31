def translate(phrase)
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels

  words = phrase.split

  words.map! do |word|
  
    if vowels.include?(word[0])
       word + "ay"
    elsif word[0..2] == "sch"
       word[3..-1] + word[0..2] + "ay"
    elsif word[0..1] == "qu"
       word[2..-1] + word[0..1] + "ay"
    elsif consonants.include?(word[0]) && word[1..2] == "qu"
       word[3..-1] + word[0..2] + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
       word[3..-1] + word[0..2] + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
       word[2..-1] + word[0..1] + "ay"
    elsif consonants.include?(word[0])
       word[1..-1] + word[0] + "ay"
    end
   
   end

   words.join(" ") 

end