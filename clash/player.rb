class Player 
    attr_reader :deck, :level, :name
    attr_writer :deck
    def initialize(name, level)
        @name = name
        @deck = Deck.new()
        @level = level
    end

end