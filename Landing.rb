class Landing
    def initialize(player)
        @player = player
    end

    def start
        if @player.rooms[:landing] == false

            @player.rooms[:landing] = true
            puts "YOU ARE ON A LANDING. MAYBE THERE IS SOME STUFF. THIS WILL BECOME BETTER WRITTEN."
            puts "WHAT DO YOU DO?"
            puts "1: BEDROOM"
            puts "2: BATHROOM"
            puts "3: FOYER"
            input = gets.chomp
            @choice = input.upcase

            if @choice =="1"
                bedroom = Bedroom.new(@player)
                bedroom.start
            elsif @choice == "2"
                bathroom = Bathroom.new(@player)
                bathroom.start
            elsif @choice == "3"
                foyer = Foyer.new(@player)
                foyer.start
            else 
                puts "I DIDN'T UNDERSTAND THAT"
                puts "#{@player.name}"
            end
            start
        else 
            @player.rooms[:landing] = true
            puts "YOU ARE ON A LANDING. MAYBE THERE IS SOME STUFF. THIS WILL BECOME BETTER WRITTEN."
            puts "WHAT DO YOU DO?"
            puts "1: BEDROOM"
            puts "2: BATHROOM"
            puts "3: FOYER"
            input = gets.chomp
            @choice = input.upcase

            if @choice =="1"
                bedroom = Bedroom.new(@player)
                bedroom.start
            elsif @choice == "2"
                bathroom = Bathroom.new(@player)
                bathroom.start
            elsif @choice == "3"
                foyer = Foyer.new(@player)
                foyer.start
            else 
                puts "I DIDN'T UNDERSTAND THAT"
                puts "#{@player.name}"
            end
            start
        end
    end
end