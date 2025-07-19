SMODS.Joker {
	key = 'door',
	rarity = 1,
	atlas = 'B1999',
	pos = { x = 2, y = 0 },
	cost = 2,
	blueprint_compat = false,
	eternal_compat = false,
	perishable_compat = true,
	config = { extra = { x_mult = 2, odds = 4 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult, card.ability.extra.odds, G.GAME.probabilities.normal } }
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
			x_mult = card.ability.extra.x_mult
			}
		end
		if context.after and pseudorandom('door') < G.GAME.probabilities.normal / card.ability.extra.odds then
			card:shatter()
		end
	end
}

