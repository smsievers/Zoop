class Bedroom
    def initialize(player)
        @player = player
    end

    def start
        if @player.rooms[:bedroom] == false

            @player.rooms[:bedroom] = true
            puts "YOU ARE IN A BEDROOM. PROBABLY A MONSTER. THIS WILL BECOME BETTER WRITTEN."
            puts "WHAT DO YOU DO?"
            puts "1: FIGHT MONSTER"
            puts "2: LANDING"
            input = gets.chomp
            @choice = input.upcase

            if @choice =="1"
                puts "YOU HAVE BEEN YEETED"
                @player.die
                outside = Outside.new(@player)
                outside.start
            elsif @choice == "2"
                landing = Landing.new(@player)
                landing.start
            else
                puts "I DIDN'T UNDERSTAND THAT"
                puts "#{@player.name}"
            end
            start
        else 
            @player.rooms[:bedroom] = true
            puts "YOU ARE IN A BEDROOM. PROBABLY A MONSTER. THIS WILL BECOME BETTER WRITTEN."
            puts "WHAT DO YOU DO?"
            puts "1: FIGHT MONSTER"
            puts "2: LANDING"
            input = gets.chomp
            @choice = input.upcase

            if @choice =="1"
                puts "YOU HAVE BEEN YEETED BY THE MONSTER. IT FLINGS YOU THROUGH A WINDOW"
                @player.die
                outside = Outside.new(@player)
                outside.start
            elsif @choice == "2"
                landing = Landing.new(@player)
                landing.start
            else
                puts "I DIDN'T UNDERSTAND THAT"
                puts "#{@player.name}"
            end
            start
        end
    end
end
