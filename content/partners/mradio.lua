Partner_API.Partner{
    key = "mradio",
    name = "Ms. Radio",
    unlocked = true,
    discovered = true,
    no_quips = false,
    pos = {x = 3, y = 0},
    loc_txt = {},
    atlas = "part",
    config = {extra = { related_card = "j_b1999_mradio", chip_procent = 5 }},
    loc_vars = function(self, info_queue, card)
        local benefits = 1
        if next(SMODS.find_card("j_b1999_mradio")) then benefits = 2 end
        return { vars = { card.ability.extra.chip_procent * benefits } }
    end,
    calculate = function(self, card, context)
        if context.partner_selling_card then
            local benefits = 1
            if next(SMODS.find_card("j_b1999_mradio")) then benefits = 2 end
            G.GAME.blind.chips = G.GAME.blind.chips - (G.GAME.blind.chips * ((card.ability.extra.chip_procent * benefits) / 100))
            G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
        end
    end
}