class GameInfoMenu
    def initialize
    
    end
    
    def display
        puts "ZOOP IS A TEXT-BASED ADVENTURE GAME. MORE DETAILS WILL FOLLOW ONCE SETH MAKES IT BETTER"
        puts "\nRETURN?"
        input = gets.chomp
        @choice = input.upcase
        return
        
    end

end
