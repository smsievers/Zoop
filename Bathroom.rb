class Bathroom
    def initialize(player)
        @player = player
    end

    def start
        if @player.rooms[:bathroom] == false

            @player.rooms[:bathroom] = true
            puts "YOU ARE IN A BATHROOM. YOU TAKE A BATH. YOU FEEL BETTER"
            puts "WHAT DO YOU DO?"
            puts "1: LANDING"
            puts "2: CLIMB OUT THE WINDOW"
            input = gets.chomp
            @choice = input.upcase

            if @choice =="1"
                landing = Landing.new(@player)
                landing.start
            elsif @choice == "2"
                outside = Outside.new(@player)
                outside.start
            else
                puts "I DIDN'T UNDERSTAND THAT"
                puts "#{@player.name}"
            end
            start
        else 
            @player.rooms[:bathroom] = true
            puts "YOU ARE IN A BATHROOM. YOU TAKE A BATH. YOU FEEL BETTER"
            puts "WHAT DO YOU DO?"
            puts "1: LANDING"
            puts "2: CLIMB OUT THE WINDOW"
            input = gets.chomp
            @choice = input.upcase

            if @choice =="1"
                landing = Landing.new(@player)
                landing.start
            elsif @choice == "2"
                outside = Outside.new(@player)
                outside.start
            else
                puts "I DIDN'T UNDERSTAND THAT"
                puts "#{@player.name}"
            end
            start
        end
    end
end
