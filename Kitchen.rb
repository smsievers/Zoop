class Kitchen
    def initialize(player)
        @player = player
    end

    def start
        if @player.rooms[:kitchen] == false

            @player.rooms[:kitchen] = true
            puts "YOU ARE IN A KITCHEN. THERE IS DELICIOUS FOOD ON THE COUNTER. YOU EAT IT AND FEEL BETTER"
            puts "WHAT DO YOU DO?"
            puts "1: FOYER"
            puts "2: CELLAR"
            input = gets.chomp
            @choice = input.upcase

            if @choice =="1"
                foyer = Foyer.new(@player)
                foyer.start
            elsif @choice == "2"
                cellar = Cellar.new(@player)
                cellar.start
            else
                puts "I DIDN'T UNDERSTAND THAT"
                puts "#{@player.name}"
            end
            start
        else 
            @player.rooms[:kitchen] = true
            puts "YOU ARE IN A KITCHEN. THERE IS NO MORE DELICIOUS FOOD ON THE COUNTER. YOU FEEL SAD"
            puts "WHAT DO YOU DO?"
            puts "1: FOYER"
            puts "2: CELLAR"
            input = gets.chomp
            @choice = input.upcase

            if @choice =="1"
                foyer = Foyer.new(@player)
                foyer.start
            elsif @choice == "2"
                cellar = Cellar.new(@player)
                cellar.start
            else
                puts "I DIDN'T UNDERSTAND THAT"
                puts "#{@player.name}"
            end
            start
        end
    end
end