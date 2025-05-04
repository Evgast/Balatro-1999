
SMODS.current_mod.optional_features = function()
    return {
		cardareas = {
			deck = true
		},
        post_trigger = true
    }
end

SMODS.Atlas {
	key = "B1999",
	path = "B1999.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "tune",
	path = "tune.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "ba",
	path = "ba.png",
	px = 71,
	py = 95
}

SMODS.Joker {
	key = 'Anjo',
	loc_txt = {
		name = 'Anjo Nala',
		text = {
			"{X:mult,C:white}X#1#{} mult after triggering",
            "{C:attention}Joker{} to the right 5 times",
            "{C:inactive}Currently #2#/5{}",
		}
	},
	rarity = 3,
	-- 1 common, 2 uncommon, 3 rare, 4 legendary.
	atlas = 'B1999',
	pos = { x = 0, y = 0 },
	cost = 8,
	blueprint_compat = false,
	config = { extra = { x_mult = 3, check = 0 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.x_mult, card.ability.extra.check } }
	end,
	calculate = function(self, card, context)
		for i=1, #G.jokers.cards do
            if G.jokers.cards[i] == card then
                my_pos = i
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
						  message = localize { type = 'variable', key = 'x_mult', vars = { card.ability.extra.x_mult } }
						}
					  end

			end
	end
}


SMODS.Joker {
	key = 'pav',
	loc_txt = {
		name = 'Pavia',
		text = {
			"Gains {C:mult}+#1#{} after",
            "selling a joker",
		}
	},
	rarity = 2,
	atlas = 'B1999',
	pos = { x = 1, y = 0 },
	cost = 5,
	blueprint_compat = true,
	config = { extra = { mult = 0, mult_gain = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult, card.ability.extra.mult_gain } }
	end,
	calculate = function(self, card, context)
		if context.selling_card and context.card.ability.set == "Joker" and not context.blueprint then
			card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
			return {
				message = 'Upgraded!',
				colour = G.C.MULT,
			}
		end
		if context.joker_main then
			return {
				mult_mod = card.ability.extra.mult,
				message = localize { type = 'variable', key = 'a_mult', vars = { card.ability.extra.mult } }
			}
		end
	end
}


SMODS.Joker {
	key = 'door',
	loc_txt = {
		name = 'Door',
		text = {
			"At the start of the blind,",
			"creates {C:spectral}To the Universe in",
			"the Alley{}"
		}
	},
	rarity = 1,
	atlas = 'B1999',
	pos = { x = 2, y = 0 },
	cost = 2,
	blueprint_compat = false,
	config = { extra = { x_mult = 2 } },
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] = G.P_CENTERS.m_b1999_doorult
	end,
	calculate = function(self, card, context)
		if context.setting_blind and not context.blueprint then
			create_playing_card({ center = G.P_CENTERS.m_b1999_doorult }, G.hand)
		end
		if context.before and not context.blueprint then
			isDoorult = false
		end
		if context.final_scoring_step and isDoorult == true and not context.blueprint then
			card:start_dissolve()
		end
	end
}

SMODS.Enhancement {
	key = 'doorult',
	loc_txt = {
		name = "To the Universe in the Alley",
		text = {
			"{X:mult,C:white}X2{} Mult, {C:red,E:2}Self Destructs{} in the deck",
			"{C:red,E:2}Shatters{} {C:attention}Door{} when scored"
		}},
	atlas = 'B1999',
	in_pool = function(self)
		return false
	end,
	pos = { x = 0, y = 0 },
	config = { x_mult = 2, h_size = 1 },
	replace_base_card = true,
	no_rank = true,
	no_suit = true,
	always_scores = true,
	loc_vars = function(self, info_queue, card)
	end,
	calculate = function (self, card, context)
		if context.cardarea == G.play and #SMODS.find_card("j_b1999_door") > 0 then
			isDoorult = true
		end
		if context.cardarea == G.deck then
			card:start_dissolve()
		end
	end
}

SMODS.Sticker {
	key = 'rankup',
	hide_badge = true,
	atlas = "tune",
	pos = { x = 2, y = 0 },
	loc_vars = function(self, info_queue, card)
	end,
	calculate = function (self, card, context)
		if card.ability.set == "Default" and context.end_of_round then
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
		if context.end_of_round then
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
			'Puts your {C:attention}hand{}',
			'back into the {C:attention}deck{},',
			'{C:red}dissolved{} at the',
			'end of the round'
	}},
	atlas = "tune",
	pos = { x = 1, y = 0 },
	cost = 0,
	calculate = function (self, card, context)
		if context.end_of_round then
			card:start_dissolve()
		  end
		end,
	loc_vars = function(self, info_queue, card)
	end,
	use = function (self, card, area)
		G.hand:unhighlight_all()
		  for i = 1, #G.hand.cards do
			G.hand.cards[i] = card:add_to_deck()
		  end
		  if context.end_of_round then
			card:start_dissolve()
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
	blueprint_compat = false,
	config = { extra = { x_mult = 3, check = 0 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { colours = { HEX("638fe1") } } }
	end,
	calculate = function(self, card, context)
		if context.setting_blind and (#G.consumeables.cards < G.consumeables.config.card_limit) then
			SMODS.add_card { key = "c_b1999_mel1" }
		end
		if context.setting_blind and (#G.consumeables.cards < G.consumeables.config.card_limit) then
			SMODS.add_card { key = "c_b1999_mel1" }
	end
end
}

SMODS.Back{
    name = "Timekeeper's Deck",
    key = "td",
	atlas = "ba",
    pos = {x = 0, y = 0},
    loc_txt = {
        name = "Timekeeper's Deck",
        text = {
            "Start with eternal",
            "{C:attention,T:j_b1999_fm}First Melody{} Joker"
        }
    },
    apply = function(self)
		G.E_MANAGER:add_event(Event({
			func = function()
				if G.jokers then
					SMODS.add_card{key="j_b1999_fm"}:set_eternal(true)
				end
				return true
			end,
		}))
    end
}