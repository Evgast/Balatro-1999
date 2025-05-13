SMODS.Joker {
	key = 'anjo',
	loc_txt = {
		name = 'Anjo Nala',
		text = {
			"{X:mult,C:white}X#1#{} mult after triggering",
            "{C:attention}Joker{} to the right 5 times",
            "{C:inactive}(Currently {C:attention}#2#{}/5){}",
		}
	},
	rarity = 3,
	-- 1 common, 2 uncommon, 3 rare, 4 legendary.
	atlas = 'B1999',
	pos = { x = 0, y = 0 },
	cost = 8,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	config = { extra = { x_mult = 3, check = 0 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult, card.ability.extra.check } }
	end,
	calculate = function(self, card, context)
		for i=1, #G.jokers.cards do
            if G.jokers.cards[i] == card then
                local my_pos = i
					if card.ability.extra.check < 5 then
					if my_pos and context.other_card == G.jokers.cards[my_pos + 1] and context.post_trigger and not context.blueprint then
						card.ability.extra.check = card.ability.extra.check + 1
						return {
							message = " " .. card.ability.extra.check ,
							colour = G.C.RARITY[4],
							card = joker
						}
					end
				end
					end
					if context.joker_main and card.ability.extra.check == 5 and not context.blueprint then
						card.ability.extra.check = 0
						return {
						  x_mult_mod = card.ability.extra.x_mult,
						}
					  end

			end
	end
}