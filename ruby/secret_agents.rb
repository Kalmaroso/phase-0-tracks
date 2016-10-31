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


counter_2 = 0

max_counter_2 = password_2.length

while counter < max_counter_2 
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	password_counter = password_2[counter]
	number_in_alphabet = alphabet.index(password_counter)
	number_in_alphabet = number_in_alphabet.to_i
	alphabet_counter =  number_in_alphabet - 1

	letter_2 = alphabet[alphabet_counter]
	
	p letter_2
	
counter_2 = counter_2 +1
end