SMODS.Back{
    name = "Storm Deck",
    key = "stormy",
	atlas = "ba",
    pos = {x = 0, y = 0},
    calculate = function (self, back, context)
        local rara = nil
		local truerara = nil
		local specil = nil
		local rarara = true
            if context.b1999_ante_change then
            if #G.jokers.cards == 0 then
                ease_dollars(-5)
            end
            if #G.jokers.cards > 0 then
				rara = G.jokers.cards[1]
				truerara = rara.config.center.rarity
				specil = rara.config.center.key
            if not rara.ability.eternal then
					if specil == "j_ice_cream" then
						SMODS.add_card({key = "j_b1999_cream"})
						rara:start_dissolve()
						rarara = false
					elseif specil == "j_b1999_cream" then
						SMODS.add_card({key = "j_ice_cream"})
						rara:start_dissolve()
						rarara = false
					elseif specil == "j_turtle_bean" then
						SMODS.add_card({key = "j_b1999_turtle"})
						rara:start_dissolve()
						rarara = false
					elseif specil == "j_b1999_turtle" then
						SMODS.add_card({key = "j_turtle_bean"})
						rara:start_dissolve()
						rarara = false
					elseif specil == "j_gros_michel" then
						SMODS.add_card({key = "j_b1999_gross"})
						rara:start_dissolve()
						rarara = false
					elseif specil == "j_b1999_gross" then
						SMODS.add_card({key = "j_gros_michel"})
						rara:start_dissolve()
						rarara = false
					elseif specil == "j_cavendish" then
						SMODS.add_card({key = "j_b1999_will"})
						rara:start_dissolve()
						rarara = false
					elseif specil == "j_b1999_will" then
						SMODS.add_card({key = "j_cavendish"})
						rara:start_dissolve()
						rarara = false
					elseif specil == "j_diet_cola" then
						SMODS.add_card({key = "j_b1999_papper"})
						rara:start_dissolve()
						rarara = false
					elseif specil == "j_b1999_papper" then
						SMODS.add_card({key = "j_diet_cola"})
						rara:start_dissolve()
						rarara = false
					else
					if truerara == 1 then
						truerara = "Common"
					elseif truerara == 2 then
						truerara = "Uncommon"
					elseif truerara == 3 then
						truerara = "Rare"
					elseif truerara == 4 then
						truerara = "Legendary"
					end
				end
				if rarara == true then
				SMODS.add_card({set = "Joker", rarity = truerara})
				rara:start_dissolve()
				end
			else
                ease_dollars(-5)
            end
    end
end
end
}
