SMODS.Sticker {
	key = 'rankup',
	hide_badge = true,
	atlas = "tune",
	pos = { x = 2, y = 0 },
	loc_vars = function(self, info_queue, card)
	end,
	calculate = function (self, card, context)
		if context.cardarea == G.discard then
			card.ability.b1999_rankup = nil
			SMODS.modify_rank(card, -1)
		end
	end,
	rate = 0.0,
}

SMODS.ConsumableType{
    key = "tune",
    primary_colour = HEX("638fe1"), 
    secondary_colour = HEX("638fe1"), 
    loc_txt = {
        name = "Tuning",
        collection = "Tuning",
        undiscovered = {
            name = "???",
            text = {
                "Discover with a tuning Joker",
            }
        }
    },
    collection_rows = { 2, 1 },
    shop_rate = 0
}

SMODS.Consumable {
	key = 'mel1',
	set = 'tune',
	loc_txt = {
		name = 'First Melody 1',
		text = {
			'Temporarily {C:attention}ranks up{} a',
			'chosen {C:attention}card{}',
			'{C:red}dissolved{} at the',
			'end of the round'
	}},
	atlas = "tune",
	pos = { x = 0, y = 0 },
	cost = 0,
	calculate = function (self, card, context)
		if context.end_of_round and context.main_eval then
			card:start_dissolve()
		  end
		end,
	loc_vars = function(self, info_queue, card)
	end,
	use = function (self, card, area)
		for i=1, #G.hand.highlighted do
			G.hand.highlighted[i]:flip()
			SMODS.modify_rank(G.hand.highlighted[i], 1)
			G.hand.highlighted[i]:flip()
			G.hand.highlighted[i]:add_sticker("b1999_rankup", true)
		  end
		end,
	can_use = function(self, card)
			if #G.hand.highlighted == 1 then
			return true else return false
		end
	end
}



SMODS.Consumable {
	key = 'mel2',
	set = 'tune',
	loc_txt = {
		name = 'First Melody 2',
		text = {
			'Discards your {C:attention}hand{}',
			'{C:red}dissolved{} at the',
			'end of the round'
	}},
	atlas = "tune",
	pos = { x = 1, y = 0 },
	cost = 0,
	calculate = function (self, card, context)
		if context.end_of_round and context.main_eval then
			card:start_dissolve()
		  end
		end,
	loc_vars = function(self, info_queue, card)
	end,
	use = function (self, card, area)
		G.hand:unhighlight_all()
		local oldnumbah = G.hand.config.highlighted_limit
			for i=1, #G.hand.cards do
				carded = G.hand.cards[i]
				G.hand.config.highlighted_limit = #G.hand.cards
				G.hand:add_to_highlighted(carded, true)
				sos = true
			end
			if sos then
				G.FUNCS.discard_cards_from_highlighted()
				G.hand.config.highlighted_limit = oldnumbah
				ease_discard(1)
				end
		end,
	can_use = function(self, card)
			if G.STATE == G.STATES.SELECTING_HAND then
			return true else return false
		end
	end
}

SMODS.Joker {
	key = 'fm',
	loc_txt = {
		name = 'First Melody',
		text = {
			"Create {V:1}First Melody 1{} and",
            "{V:1}First Melody 2{} at the",
            "start of the round",
		}
	},
	rarity = 2,
	atlas = 'B1999',
	pos = { x = 3, y = 0 },
	cost = 5,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = true,
	config = { extra = { x_mult = 3, check = 0 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { colours = { HEX("638fe1") } } }
	end,
	calculate = function(self, card, context)
		if context.setting_blind and (#G.consumeables.cards < G.consumeables.config.card_limit) then
			SMODS.add_card { key = "c_b1999_mel1" }
		end
		if context.setting_blind and (#G.consumeables.cards < G.consumeables.config.card_limit) then
			SMODS.add_card { key = "c_b1999_mel2" }
	end
end
}
