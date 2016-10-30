puts " choose password"
password = gets.chomp

counter = 0

max_counter = password.length

while counter < max_counter 

	letter = password[counter].next
	puts  "#{letter}"
	counter+= 1
end


puts "choose password"
password = gets.chomp


counter = 0

max_counter = password.length

while counter < max_counter 
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	password_counter = password[counter]
	number_in_alphabet = alphabet.index("password_counter")
	number_in_alphabet = number_in_alphabet.to_i
	alphabet_counter =  number_in_alphabet - 1

	letter = alphabet[alphabet_counter]
	
	puts "#{letter}"
	

end