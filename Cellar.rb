class Cellar

    def initialize(player)
        @choice = ""
        @player = player
    end

    def start
        if @player.rooms[:cellar] == false

            @player.rooms[:cellar] = true
            puts "YOU ARE IN A CELLAR. THERE IS A MONSTER. THIS WILL BECOME BETTER WRITTEN."
            puts "WHAT DO YOU DO?"
            puts "1: FIGHT THE MONSTER"
            puts "2: TRY TO SNEAK BY AND UP THE STAIRS"
            puts "3: TRY TO SNEAK BACK OUTSIDE"
            input = gets.chomp
            @choice = input.upcase

            if @choice =="1"
                puts "YOU WILL NOW FIGHT SOMETHING"
                kitchen = Kitchen.new(@player)
                kitchen.start
            elsif @choice == "2"
                kitchen = Kitchen.new(@player)
                kitchen.start
            else 
                puts "I DIDN'T UNDERSTAND THAT"
                puts "#{@player.name}"
            end
            start
        else 
            @player.rooms[:cellar] = true
            puts "YOU ARE IN A CELLAR. THERE IS PROBABLY NO MONSTER BECAUSE YOU KILLED IT BUT WE WILL FIGURE THAT OUT. THIS WILL BECOME BETTER WRITTEN."
            puts "WHAT DO YOU DO?"
            puts "1: FIGHT THE MONSTER"
            puts "2: TRY TO SNEAK BY AND UP THE STAIRS"
            puts "3: TRY TO SNEAK BACK OUTSIDE"
            input = gets.chomp
            @choice = input.upcase

            if @choice =="1"
                puts "YOU WILL NOW FIGHT SOMETHING"
                kitchen = Kitchen.new(@player)
                kitchen.start
            elsif @choice == "2"
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