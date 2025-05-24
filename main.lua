G.B1999 = {}
SMODS.current_mod.optional_features = function()
    return {
		cardareas = {
			deck = true,
			discard = true
		},
        post_trigger = true,
		retrigger_joker = true
    }
end

SMODS.load_file("hooksmayhaps.lua")()
SMODS.load_file("content/jokers/anjo.lua")()
SMODS.load_file("content/jokers/pavia.lua")()
SMODS.load_file("content/jokers/doorstuff.lua")()
SMODS.load_file("content/jokers/fmstuff.lua")()
SMODS.load_file("content/jokers/orange.lua")()
SMODS.load_file("content/jokers/windsong.lua")()
SMODS.load_file("content/jokers/lopera.lua")()
SMODS.load_file("content/jokers/jokernia.lua")()
SMODS.load_file("content/jokers/carbuncles.lua")()
SMODS.load_file("content/jokers/loggerhead.lua")()
SMODS.load_file("content/vouchers/pneuma.lua")()
SMODS.load_file("content/decks/timekeeper.lua")()

G.B1999.compat = {
	partner = (SMODS.Mods['partner'] or {}).can_load or false,
}

if G.B1999.compat.partner then SMODS.load_file('content/partners/slice.lua')() end
if G.B1999.compat.partner then SMODS.load_file('content/partners/fmpart.lua')() end
if G.B1999.compat.partner then SMODS.load_file('content/partners/wspart.lua')() end

SMODS.Atlas {
	key = "B1999",
	path = "B1999.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "buncles",
	path = "buncles.png",
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

SMODS.Atlas {
	key = "vouch",
	path = "vouch.png",
	px = 71,
	py = 95
}

SMODS.Atlas{
    key = "part",
    px = 46,
    py = 58,
    path = "parts.png"
}