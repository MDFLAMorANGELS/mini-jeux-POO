require 'bundler'
Bundler.require


require_relative 'lib/game'
require_relative 'lib/player'

puts "------------------------------------------------
|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
|Le but du jeu est d'être le dernier survivant !|
-------------------------------------------------"
print "Choisis ton nom >"
name = gets.chomp.to_s
player1 = HumanPlayer.new(name)
puts "Bienvenue #{name}"
player2 = HumanPlayer.new("José")
player3 = HumanPlayer.new("Josiane")

while user.life_points >0 && (player1.life_points > 0 || player2.life_points >0)


end


binding.pry