class Deck
    def initialize
        @cards = {}
    end

    def add_card(card, level)
        @cards[card] = level
    end

    def cards_level_average
        return @cards.values.sum / (@cards.length * 1.0)
    end

    def cost_average
        sum = 0
        @cards.each_pair do |card, level|
            sum += card.elixir 
        end
        sum / (@cards.length * 1.0)
    end
end

