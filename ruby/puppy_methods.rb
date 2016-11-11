class Puppy

  def initialize
  	puts "Initializing new puppy instance...."

  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(times)
  		counter = 0
  		until counter == times
  			puts "Woof!"
  			counter += 1
  		end
  	end

  	def roll_over
  		puts"rolls over"
  	end
  	
  	def dog_age(age)
  		new_age = age * 7
  		p new_age
  	end

  	def go_outside
  		puts "The dog is now outside"
  	end

end


labrador = Puppy.new

labrador.fetch("ball")

labrador.speak(10)

labrador.roll_over

labrador.dog_age(3)

labrador.go_outside

dalmation = Puppy.new

class Cats 
	def initialize
		puts "Initializing new cat instance...."
	end

	def speak
		puts "Meow!"
	end

	def eat(food)
		puts "Cat has eaten #{food}!"
	end

	def pounce(enemy)
		puts "The cat has pounced the #{enemy}!!!"
	end

end

callico = Cats.new

callico.speak


cats = []
counter = 0 
until counter == 50
	random_number = rand(1000)
	p random_number
	random_number = random_number.to_s
	random_number = Cats.new
	cats.push(random_number)
	counter += 1

end

cats.each do |cat|
	cat.speak
	cat.eat("fish")
	cat.pounce("mouse")
end


p cats
