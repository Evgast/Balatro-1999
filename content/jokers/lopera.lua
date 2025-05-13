SMODS.Joker {
	key = 'lopera',
	loc_txt = {
		name = 'Lopera',
		text = {
            "{C:chips}+#1#{} chips when",
			"{C:attention}Joker{} to the left triggers,",
			"{C:mult}+#2#{} mult when {C:attention}Joker{}",
			"to the right triggers",
		}
	},
	rarity = 2,
	atlas = 'B1999',
	pos = { x = 1, y = 1 },
	cost = 5,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = true,
	config = { extra = { chips = 20, mult = 4 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.mult } }
	end,
	calculate = function(self, card, context)
		for i=1, #G.jokers.cards do
            if G.jokers.cards[i] == card then
                local my_pos = i
					if context.other_card == G.jokers.cards[my_pos - 1] and context.post_trigger then
                        return {
                            chips = card.ability.extra.chips,
                            message_card = card
                        }
                    end
                        if context.other_card == G.jokers.cards[my_pos + 1] and context.post_trigger then
                        return {
                            mult = card.ability.extra.mult,
                            message_card = card
                        }
                    end
                end
        end
	end
}