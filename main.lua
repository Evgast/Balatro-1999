
SMODS.current_mod.optional_features = function()
    return {
		cardareas = {
			deck = true
		},
        post_trigger = true
    }
end

SMODS.load_file("content/jokers/anjo.lua")()
SMODS.load_file("content/jokers/pavia.lua")()
SMODS.load_file("content/jokers/doorstuff.lua")()
SMODS.load_file("content/jokers/fmstuff.lua")()
SMODS.load_file("content/jokers/orange.lua")()
SMODS.load_file("content/decks/timekeeper.lua")()


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

SMODS.Atlas {
	key = "enhance",
	path = "enhance.png",
	px = 71,
	py = 95
}
