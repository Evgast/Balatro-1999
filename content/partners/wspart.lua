Partner_API.Partner{
    key = "ws",
    name = "Windsong",
    unlocked = true,
    discovered = true,
    individual_quips = true,
    pos = {x = 2, y = 0},
    loc_txt = {},
    atlas = "part",
    config = {extra = { related_card = "j_b1999_ws", mult = 2, held = "held in hand" }},
    loc_vars = function(self, info_queue, card)
        local benefits = false
        card.ability.extra.held = "held in hand"
        card.ability.extra.mult = 2
        if next(SMODS.find_card("j_b1999_ws")) then
            benefits = true
            card.ability.extra.held = "scored"
            card.ability.extra.mult = 3
        end
        return { vars = { card.ability.extra.mult, card.ability.extra.held } }
    end,
    calculate = function(self, card, context)
        local benefits = false
        card.ability.extra.mult = 2
        card.ability.extra.held = "held in hand"
        if next(SMODS.find_card("j_b1999_ws")) then
            benefits = true
            card.ability.extra.held = "scored"
            card.ability.extra.mult = 3
        end
		if not context.end_of_round and context.individual and context.cardarea == G.hand and context.other_card:is_suit("Spades") and benefits == false then
            return {
				card = card,
                mult = card.ability.extra.mult
            }
        end
        if not context.end_of_round and context.individual and context.cardarea == G.play and context.other_card:is_suit("Spades") and benefits == true then
            return {
				card = card,
                mult = card.ability.extra.mult
            }
        end
    end
}