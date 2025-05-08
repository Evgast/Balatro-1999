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
	atlas = 'enhance',
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