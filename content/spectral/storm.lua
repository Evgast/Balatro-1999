SMODS.Consumable {
	key = 'storm',
	set = 'Spectral',
	atlas = "spectr",
	pos = { x = 0, y = 0 },
	cost = 4,
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = { key = "b1999_reverse", set = 'Other' }
	end,
	use = function (self, card, area)
		local rara = nil
		local truerara = nil
		local specil = nil
		local rarara = true
		G.hand:unhighlight_all()
			for i=1, #G.jokers.highlighted do
				rara = G.jokers.highlighted[i]
				truerara = rara.config.center.rarity
				specil = rara.config.center.key
					if specil == "j_ice_cream" then
						SMODS.add_card({key = "j_b1999_cream"})
						rara:start_dissolve()
						rarara = false
					elseif specil == "j_b1999_creame" then
						SMODS.add_card({key = "j_ice_cream"})
						rara:start_dissolve()
						rarara = false
					elseif specil == "j_turtle_bean" then
						SMODS.add_card({key = "j_b1999_kala"})
						rara:start_dissolve()
						rarara = false
					elseif specil == "j_b1999_kala" then
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
			end
		end,
	can_use = function(self, card)
			if #G.jokers.highlighted == 1 and not G.jokers.highlighted[1].ability.eternal then
			return true else return false
		end
	end
}

SMODS.Rarity({
	key = "reversed",
	loc_txt = {name = "Reversed"},
	badge_colour = HEX("638fe1"),
})








