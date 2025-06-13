SMODS.Consumable {
	key = 'storm',
	set = 'Spectral',
	atlas = "spectr",
	pos = { x = 0, y = 0 },
	cost = 4,
	calculate = function (self, card, context)
		if context.end_of_round and context.main_eval then
			card:start_dissolve()
		  end
		end,
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = { key = "reverse", set = 'Other' }
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
						G.jokers.highlighted[i]:start_dissolve()
						rarara = false
					elseif specil == "j_b1999_cream" then
						SMODS.add_card({key = "j_ice_cream"})
						G.jokers.highlighted[i]:start_dissolve()
						rarara = false
					elseif specil == "j_turtle_bean" then
						SMODS.add_card({key = "j_b1999_turtle"})
						G.jokers.highlighted[i]:start_dissolve()
						rarara = false
					elseif specil == "j_b1999_turtle" then
						SMODS.add_card({key = "j_turtle_bean"})
						G.jokers.highlighted[i]:start_dissolve()
						rarara = false
					elseif specil == "j_gros_michel" then
						SMODS.add_card({key = "j_b1999_gross"})
						G.jokers.highlighted[i]:start_dissolve()
						rarara = false
					elseif specil == "j_b1999_gross" then
						SMODS.add_card({key = "j_gros_michel"})
						G.jokers.highlighted[i]:start_dissolve()
						rarara = false
					elseif specil == "j_cavendish" then
						SMODS.add_card({key = "j_b1999_will"})
						G.jokers.highlighted[i]:start_dissolve()
						rarara = false
					elseif specil == "j_b1999_will" then
						SMODS.add_card({key = "j_cavendish"})
						G.jokers.highlighted[i]:start_dissolve()
						rarara = false
					elseif specil == "j_diet_cola" then
						SMODS.add_card({key = "j_b1999_papper"})
						G.jokers.highlighted[i]:start_dissolve()
						rarara = false
					elseif specil == "j_b1999_papper" then
						SMODS.add_card({key = "j_diet_cola"})
						G.jokers.highlighted[i]:start_dissolve()
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
				G.jokers.highlighted[i]:start_dissolve()
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

SMODS.Joker {
	key = 'cream',
	rarity = 'b1999_reversed',
	atlas = 'B1999',
	pos = { x = 3, y = 2 },
	cost = 5,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	config = { extra = { chips_gain = 5, chips = 0 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips_gain, card.ability.extra.chips } }
	end,
	calculate = function(self, card, context)
		if context.before and not context.blueprint then
			card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chips_gain
			return {
				message = "+" .. card.ability.extra.chips_gain,
				colour = G.C.CHIPS
			}
		end
		if context.joker_main then
			return {
				chips = card.ability.extra.chips
			}
		end
	end
}

SMODS.Joker {
	key = 'turtle',
	rarity = 'b1999_reversed',
	atlas = 'B1999',
	pos = { x = 4, y = 2 },
	cost = 6,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	config = { extra = { turtle_rounds = 0, total_rounds = 3, h_size = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.turtle_rounds, card.ability.extra.total_rounds, card.ability.extra.h_size } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval and not context.blueprint then
            card.ability.extra.turtle_rounds = card.ability.extra.turtle_rounds + 1
			if card.ability.extra.turtle_rounds == card.ability.extra.total_rounds then
                local eval = function(card) return not card.REMOVED end
                juice_card_until(card, eval, true)
			end
			return {
				message = "" .. card.ability.extra.turtle_rounds
			}
		end
		if context.selling_self and (card.ability.extra.turtle_rounds >= card.ability.extra.total_rounds) and not context.blueprint then
			G.hand:change_size(card.ability.extra.h_size)
		end
	end
}

SMODS.Joker {
	key = 'gross',
	rarity = 'b1999_reversed',
	atlas = 'B1999',
	pos = { x = 5, y = 2 },
	cost = 5,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	config = { extra = { mult = 0, mult_gain = 5, odds = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult, card.ability.extra.mult_gain, card.ability.extra.odds, G.GAME.probabilities.normal } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval and pseudorandom('gross_mike') < G.GAME.probabilities.normal / card.ability.extra.odds and not context.blueprint then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
			return {
				message = "+" .. card.ability.extra.mult,
				colour = G.C.MULT
			}
		end
		if context.joker_main then
			return {
				mult = card.ability.extra.mult
			}
		end
	end
}

SMODS.Joker {
	key = 'will',
	rarity = 'b1999_reversed',
	atlas = 'B1999',
	pos = { x = 0, y = 3 },
	cost = 4,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	config = { extra = { x_mult = 1, x_mult_gain = 0.25, odds = 3 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult, card.ability.extra.x_mult_gain, card.ability.extra.odds, G.GAME.probabilities.normal } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval and pseudorandom('william') < G.GAME.probabilities.normal / card.ability.extra.odds and not context.blueprint then
            card.ability.extra.x_mult = card.ability.extra.x_mult + card.ability.extra.x_mult_gain
			return {
				message = "+X" .. card.ability.extra.x_mult,
				colour = G.C.MULT
			}
		end
		if context.joker_main then
			return {
				x_mult = card.ability.extra.x_mult
			}
		end
	end
}

SMODS.Joker {
	key = 'papper',
	rarity = 'b1999_reversed',
	atlas = 'B1999',
	pos = { x = 1, y = 3 },
	cost = 6,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	config = { extra = { pap_round = 0, total_rounds = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.pap_round, card.ability.extra.total_rounds } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval and not context.blueprint then
        	card.ability.extra.pap_round = card.ability.extra.pap_round + 1
			return {
				message = "+1"
			}
		end
		if context.end_of_round and context.main_eval and card.ability.extra.pap_round >= card.ability.extra.total_rounds and not context.blueprint then
			add_tag(G.B1999.poll_tag("papper",  nil, {}))
			card.ability.extra.pap_round = 0
		end
	end
}

