#module Shout
#	def self.yell_angrily(words)
#	p	words + "!!!" + " :("
#	end
#
#	def self.yelling_happily(words)
#		p words + "!" + " :D"
#	end
#end

#Shout.yelling_happily("Hey buddy")

#Shout.yell_angrily("Run")

module Shout
	def yell_angrily(words)
	p	words + "!!!" + " :("
	end

	def yelling_happily(words)
		p words + "!" + " :D"
	end
end

class Baby
	include Shout
end

class Shia_labeouf
	include Shout
end

baby = Baby.new

shia = Shia_labeouf.new

p shia 
shia.yelling_happily("Hey buddy")
shia.yell_angrily("Just do it")
p baby
shia.yelling_happily("AAAAAA")
baby.yell_angrily("FOOOD")