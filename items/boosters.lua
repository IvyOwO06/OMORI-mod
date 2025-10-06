SMODS.Atlas {
    key = "boosters",
    path = "boosters.png",
    px = 72,
    py = 95,
}

SMODS.Booster {
    key = "emotionsmall",
    cost = 4,
    atlas = "boosters",
    weight = 1,
    pos = { x = 0, y = 0 },
    draw_hand = true,
    kind = "emotions",

    loc_txt = {
        name = 'Emotion Pack',
        text = {
            "Choose {C:attention}#1#{} of up to",
            "{C:attention}#2#{C:chips} Emotion{} cards",
        },
        group_name = {"Emotion Pack"},
    },

    config = { extra = 3, choose = 1 },

    loc_vars = function(self, info_queue, card)
        return { 
                vars = { card.ability.choose, card.ability.extra},
            }
    end,

    create_card = function(self, card)
		return create_card("emotions", G.pack_cards, nil, nil, true, true, nil, "emotionsmall")
	end
}