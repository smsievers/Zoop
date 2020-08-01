class GameMenu
    def initialize
        @player = Player.new(10)
        
    end

    attr_reader :player

    def start
        @player.name = get_info("WHAT IS YOUR NAME, TRAVELLER?")
        puts "#{@player.name} has #{@player.health} health"
        outside = Outside.new(@player)
        outside.start
    end

    def get_info(words)
        puts "#{words}"
        info = gets.chomp
    end

end
