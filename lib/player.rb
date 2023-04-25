class Player
  attr_accessor :name, :life_point

  def initialize(name)
    @name = name
    @life_point = 20
  end

  def show_state
    return "#{@name} a #{@life_point} points de vie"
  end

  def gets_damage(damage)
    @life_point -= damage
    
    if @life_point <= 0
      @life_point = 0
      "Le Joueur #{@name} a été tué !"
    end
  end

  def attacks(player)
    puts "#{@name} attaque #{player.name}"
    damage = compute_damage
    player.gets_damage(damage)
    puts "il lui inflige #{damage} points de dommages"
    if player.life_point <= 0
      player.life_point == 0
      "Le Joueur #{player.name} a été tué !"
    end
  end

  def compute_damage
    return rand(1..6)
  end

end

class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name)
    super(name)
    @life_point = 100
    @weapon_level = 1
  end

  def show_state
    return "#{@name} a #{@life_point} points de vie et une épée de niveau #{@weapon_level}"
  end

  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
    new_weapon = rand(1..15)
    puts "#{@name} à trouvé une arme de niveau #{new_weapon}"
    if new_weapon > @weapon_level
      @weapon_level = new_weapon
      puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
    else
      puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
    end
  end

  def search_health_pack
    health_pack = rand(1..6)
    if health_pack == 1
      puts "#{@name} n'as rien trouvé..."
    elsif health_pack.between?(2, 5)
      if @life_point <= 50
        @life_point += 50
      else
        @life_point = 100
      end
      puts "Bravo, #{@name} as trouvé un pack de +50 points de vie !"
    elsif health_pack == 6
      if @life_point <= 20
        @life_point += 80
      else
        @life_point = 100
      end
      puts "Waow, #{@name} as trouvé un pack de +80 points de vie !"
    end
  end
end
