require 'bundler'
Bundler.require


require_relative 'lib/game'
require_relative 'lib/player'

player1 = HumanPlayer.new("Caroline")
player2 = HumanPlayer.new("Chloé")

puts "----====----" * 5

puts "Présentons les deux combatants"
puts "A ma droite #{player1.name}"
puts "A ma gauche #{player2.name}"

while player1.life_point > 0 && player2.life_point > 0

    puts "----====----" * 5

    puts "Voici l'etat de chaque joueur"
    puts player1.show_state
    puts player2.show_state

    puts "----====----" * 5

    puts "Fight !"
    puts "Passons à la phase d'attaque"
    puts player1.attacks(player2)
    if player2.life_point <= 0
        puts "#{player1.name} Remporte se combat !"
        break
    end
    puts player2.attacks(player1)
    if player1.life_point <= 0
        puts "#{player2.name} Remporte se combat !"
        break
    end
    puts player2.search_weapon
    puts player2.search_health_pack
    
    puts player1.search_weapon
    puts player1.search_health_pack
end


binding.pry
puts "end of file"
