class Player
    def initialize(health)
      @health = health  
      @rooms = Hash.new(false)
    end

    attr_accessor :name, :health, :rooms
    
    def die
        @rooms = Hash.new(false)
        puts "YOU HAVE DIED"
    end
end

player = Player.new(10)
# player.rooms[:Cellar] = true
# puts player.rooms