require "./deck"
require "./player"
require "./card"

marco = Player.new("Marco", 13)
ryan = Player.new("Ryan", 11)
michelle = Player.new("Michelle", 13)
igor = Player.new("Igor", 10)

marco.deck = Deck.new()
ryan.deck = Deck.new()
michelle.deck = Deck.new()
igor.deck = Deck.new()


pekota = Card.new("Pekota", 7)
pekita = Card.new("Pekita", 4)
hoyo_en_el_piso = Card.new("Hoyo en el piso", 4)
hachero = Card.new("Hachero", 4)
huracan = Card.new("Huracan", 3)
popetin = Card.new("Popetin", 3)
mombe = Card.new("Mombe", 3)
caballo = Card.new("Caballo", 4)
caballa = Card.new("Caballa", 5)
puercos = Card.new("puercos", 5)
esqueletos_de_tres = Card.new("Esqueletos de tres", 1)
guero = Card.new("Guero", 6)
murciegalos = Card.new("Murciegalos", 2)
torre_tesla = Card.new("Torre Tesla", 4)
zap = Card.new("Zap", 2)
tronco = Card.new("Tronco", 2)
princesa = Card.new("Princesa", 3)

#marco deck
marco.deck.add_card(pekota, 11)
marco.deck.add_card(murciegalos, 12)
marco.deck.add_card(popetin, 13)
marco.deck.add_card(mombe, 12)
marco.deck.add_card(zap, 12)
marco.deck.add_card(tronco, 11)
marco.deck.add_card(princesa, 12)
marco.deck.add_card(torre_tesla, 12)

#ryan deck
ryan.deck.add_card(murciegalos, 13)
ryan.deck.add_card(popetin, 13)
ryan.deck.add_card(mombe, 13)
ryan.deck.add_card(zap, 13)
ryan.deck.add_card(tronco, 13)
ryan.deck.add_card(princesa, 13)
ryan.deck.add_card(torre_tesla, 12)
ryan.deck.add_card(pekota, 12)

#michelle deck
michelle.deck.add_card(pekota, 11)
michelle.deck.add_card(murciegalos, 11)
michelle.deck.add_card(popetin, 11)
michelle.deck.add_card(mombe, 12)
michelle.deck.add_card(zap, 12)
michelle.deck.add_card(tronco, 11)
michelle.deck.add_card(princesa, 11)
michelle.deck.add_card(torre_tesla, 10)

#igor deck
igor.deck.add_card(pekota, 10)
igor.deck.add_card(murciegalos, 10)
igor.deck.add_card(popetin, 10)
igor.deck.add_card(mombe, 10)
igor.deck.add_card(zap, 10)
igor.deck.add_card(tronco, 10)
igor.deck.add_card(princesa, 10)
igor.deck.add_card(torre_tesla, 12)

   
def matching_game(player_1, player_2)
    tower_1 = player_1.level
    tower_2 = player_2.level
    cards_1 = player_1.deck.cards_level_average
    cards_2 = player_2.deck.cards_level_average
    name_1 = player_1.name
    name_2 = player_2.name

    if ((tower_1 - tower_2).abs < 2) && ((cards_1 - cards_2).abs < 1)
        return "Empieza la batalla entre #{name_1} vs #{name_2}"
    else
        if (tower_1 - tower_2).abs >= 2
            puts "Hay una diferencia de #{(tower_1 - tower_2).abs} punto(s) de nivel de torres entre #{name_1} y #{name_2}"
        end
        if (cards_1 - cards_2).abs >= 1
            puts "Hay una diferencia de #{(cards_1 - cards_2).abs} punto(s) de promedio de nivel de cartas entre #{name_1} y #{name_2}"
        end
        return puts "No pueden pelear"
    end
end

test1 = matching_game(michelle, marco)
puts test1
