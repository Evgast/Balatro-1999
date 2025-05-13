--This is where I'll keep stolen goods if I'll need em. Nice >:]

--This one is from Baladrone. Balatro Modded Wiki is very convenient for taking other peoples stuff!
do
    local original_play_cards_from_highlighted = G.FUNCS.play_cards_from_highlighted
    G.FUNCS.play_cards_from_highlighted = function(e)
        SMODS.calculate_context({play_button = true})

        original_play_cards_from_highlighted(e)
    end
end