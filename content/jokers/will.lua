SMODS.Joker {
	key = 'will',
	rarity = 'b1999_reversed',
	atlas = 'B1999',
	pos = { x = 0, y = 3 },
	cost = 4,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	config = { extra = { x_mult = 1, x_mult_gain = 0.5, odds = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult, card.ability.extra.x_mult_gain, card.ability.extra.odds, G.GAME.probabilities.normal } }
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.main_eval and pseudorandom('william') < G.GAME.probabilities.normal / card.ability.extra.odds and not context.blueprint then
            card.ability.extra.x_mult = card.ability.extra.x_mult + card.ability.extra.x_mult_gain
			return {
				message = "+X" .. card.ability.extra.x_mult_gain,
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