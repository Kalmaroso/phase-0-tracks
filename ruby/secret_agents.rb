puts " choose password"
password = gets.chomp

counter = 0

max_counter = password.length

while counter < max_counter 

	letter = password[counter].next
	p letter
	counter+= 1
end


puts "choose password"
password_2 = gets.chomp


#decrypted = ""
#	alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    alphabet = "abcdefghijklmnopqrstuvwxyz"
	i = 0
	a = 0
	puts"what password would you like to decrypt?"
	string = gets.chomp
		while i < string.length
		if string[i] == " "
		else 
		placeholder = alphabet.index(string[i])
		placeholder = placeholder - 1 
		string[i] = alphabet[placeholder]
	    end
	    i = i + 1
	end
	puts string
	
	