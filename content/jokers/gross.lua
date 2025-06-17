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