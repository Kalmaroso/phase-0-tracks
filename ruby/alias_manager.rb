input = ""


secret_agents_databank ={}

until input == "end"


puts "What is the name of the secret agent?"

original_name = gets.chomp.downcase.gsub(/\s+/, " ")

word_array = original_name.split(' ')

word_array.reverse!

reverse_name = word_array.join(' ')

letter_array = reverse_name.split('')


vowels = ["a", "e", "i", "o", "u"]

consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"] 

encoded_name_array = []
letter_array.map do |letter|
	if consonants.include?(letter) == true 

		consonants_index = consonants.index(letter)
		next_consonant = consonants[consonants_index + 1]
		encoded_name_array.push(next_consonant)

	elsif  vowels.include?(letter) == true

		    vowels_index = vowels.index(letter)
			next_vowel = vowels[vowels_index + 1]
			encoded_name_array.push(next_vowel)

	else 
		encoded_name_array.push(" ")
	
	end

end



encoded_name = encoded_name_array.join('')
encoded_name.capitalize!



secret_agents_databank[original_name] = encoded_name

p secret_agents_databank






puts "If you are done with this program type <end>."
input = gets.chomp.downcase.gsub(/\s+/, " ")


end