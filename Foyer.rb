class Foyer
    
    def initialize(player)
        @player = player
    end

    def start
        if @player.rooms[:foyer] == false

            @player.rooms[:foyer] = true
            puts "YOU ARE IN A FOYER. THERE IS A PUZZLE. THIS WILL BECOME BETTER WRITTEN."
            puts "WHAT DO YOU DO?"
            puts "1: PUZZLE"# Gates staircase
            puts "2: BACK OUTSIDE"
            puts "3: KITCHEN"
            input = gets.chomp
            @choice = input.upcase

            if @choice =="1"
                puts "Puzzle screen goes here"
                landing = Landing.new(@player)
                landing.start
            elsif @choice == "2"
                outside = Outside.new(@player)
                outside.start
            elsif @choice == "3"
                kitchen = Kitchen.new(@player)
                kitchen.start
            end
            start
        else 
            @player.rooms[:foyer] = true
            puts "YOU ARE IN A FOYER. MAYBE THERE IS A PUZZLE BUT MAYBE NOT. WE WILL FIGURE THAT OUT. THIS WILL BECOME BETTER WRITTEN."
            puts "WHAT DO YOU DO?"
            puts "1: SOLVE PUZZLE"
            puts "2: BACK OUTSIDE"
            puts "3: KITCHEN"
            input = gets.chomp
            @choice = input.upcase

            if @choice =="1"
                puts "You have chosen 1"
                landing = Landing.new(@player)
                landing.start
            elsif @choice == "2"
                outside = Outside.new(@player)
                outside.start
            elsif @choice == "3"
                kitchen = Kitchen.new(@player)
                kitchen.start
            else 
                puts "I DIDN'T UNDERSTAND THAT"
                puts "#{@player.name}"
            end
            start
        end
    end
end
