Partner_API.Partner{
    key = "slice",
    name = "Orange Slice",
    unlocked = true,
    discovered = true,
    individual_quips = true,
    pos = {x = 0, y = 0},
    loc_txt = {},
    atlas = "part",
    config = {extra = { related_card = { "j_b1999_orange", "j_b1999_gun" }, x_mult = 1, x_mult_gain = 0.25 }},
    loc_vars = function(self, info_queue, card)
        local benefits = 1
        if next(SMODS.find_card("j_b1999_orange")) or next(SMODS.find_card("j_b1999_gun")) then benefits = 2 end
        return { vars = { card.ability.extra.x_mult, card.ability.extra.x_mult_gain * benefits } }
    end,
    calculate = function(self, card, context)
        local dud = false
				for i=1, #G.consumeables.cards do
                    if context.partner_click and G.STATE == G.STATES.SELECTING_HAND then
                    local benefits = 1
                    dud = true
                    if next(SMODS.find_card("j_b1999_orange")) or next(SMODS.find_card("j_b1999_gun")) then benefits = 2 end
					G.consumeables.cards[i]:start_dissolve()
                    card.ability.extra.x_mult = card.ability.extra.x_mult + card.ability.extra.x_mult_gain * benefits
					return {
                        card = G.consumeables.cards[i],
					}
                end
            end
                if context.joker_main and card.ability.extra.x_mult > 1 then
                    return {
                        message = localize{type = "variable", key = "a_xmult", vars = {card.ability.extra.x_mult}},
                        Xmult_mod = card.ability.extra.x_mult,
                    }
                    end
                if context.after then
                    G.E_MANAGER:add_event(Event({func = function()
                    card.ability.extra.x_mult = 1
                return true end}))
                    end
            end
}

