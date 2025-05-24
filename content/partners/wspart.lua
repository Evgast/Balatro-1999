Partner_API.Partner{
    key = "ws",
    name = "Windsong",
    unlocked = true,
    discovered = true,
    individual_quips = true,
    pos = {x = 2, y = 0},
    loc_txt = {},
    atlas = "part",
    config = {extra = { related_card = "j_b1999_ws", mult = 2, mult_bef = 3 }},
    loc_vars = function(self, info_queue, card)
        local benefits = 1
        if next(SMODS.find_card("j_b1999_ws")) then benefits = true end
        return { vars = { card.ability.extra.mult, card.ability.extra.mult_bef } }
    end,
    calculate = function(self, card, context)
        local benefits = false
        if next(SMODS.find_card("j_b1999_ws")) then benefits = true end
		if not context.end_of_round and context.individual and context.cardarea == G.hand and context.other_card:is_suit("Spades") and benefits == false then
            return {
				card = card,
                mult = card.ability.extra.mult
            }
        end
        if not context.end_of_round and context.individual and context.cardarea == G.play and context.other_card:is_suit("Spades") and benefits == true then
            return {
				card = card,
                mult = card.ability.extra.mult_bef
            }
        end
    end
}