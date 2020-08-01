class Outside
    def initialize(player)
        @choice = ""
        @player = player
    end

    def start
        @player.rooms[:outside] = true
        puts "YOU FIND YOURSELF OUTSIDE OF A STRANGE AND DEFINITELY NOT HAUNTED MANSION"
        puts "WHAT DO YOU DO?"
        puts "1: TRY THE FRONT DOOR"
        puts "2: INVESTIGATE OUTSIDE"
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