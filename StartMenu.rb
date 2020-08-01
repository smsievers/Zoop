class StartMenu
    def initialize
        @choice = ""

    end

    attr_reader :name, :player 

    
    def start
        puts "WELCOME TO ZOOP"
        puts "SELECT AN OPTION:"
        puts "1: NEW GAME"
        puts "2: INFO"
        puts "3: QUIT"
        input = gets.chomp
        @choice = input.upcase

        
        if @choice =="1"
            game = GameMenu.new
            game.start
        elsif @choice == "2"
            info = GameInfoMenu.new
            info.display
        elsif @choice == "3"
            puts "HAVE A NICE DAY"
            exit
        else 
            puts "I DIDN'T UNDERSTAND THAT"
        end
        start
    end
end
