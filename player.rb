class Player 
    attr_accessor :name
    attr_accessor :lives
    def initialize  name
        @lives = 3
        @name = name 
    end

    def damage? 
        @lives = @lives - 1
    end

    def game_end?
        @lives = @lives <= 0
    end




end