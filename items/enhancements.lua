SMODS.Atlas {
    key = 'enhancements',
    path = 'enhancements.png',
    px = 71,
    py = 95
}

SMODS.Enhancement {
    key = 'angry',
    loc_txt = {
        name = 'Angry',
        text = {
            "Scored cards give {C:red}#1#{} Mult",
        }
    },
    always_scores = true,
    atlas = 'enhancements',
    pos = { x = 1, y = 0 },

    config = { extra = {mult = 4}},

    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.mult}}
    end
}

SMODS.Enhancement {
    key = 'furious',
    loc_txt = {
        name = 'Furious',
        text = {
            "Scored cards give {C:red}#1#{} Mult",
        }
    },
    always_scores = true,
    atlas = 'enhancements',
    pos = { x = 1, y = 0 },

    config = { extra = {mult = 20}},

    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.mult}}
    end
}

SMODS.Enhancement {
    key = 'enraged',
    loc_txt = {
        name = 'Enraged',
        text = {
            "Scored cards give {X:mult,C:white}X#1#{} Mult",
        }
    },
    always_scores = true,
    atlas = 'enhancements',
    pos = { x = 1, y = 0 },

    config = { extra = {Xmult = 3}},

    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.Xmult}}
    end
}

SMODS.Enhancement {
    key = 'happy',
    loc_txt = {
        name = 'Happy',
        text = {
            "Happy :D",
        }
    },
    always_scores = true,
    atlas = 'enhancements',
    pos = { x = 2, y = 0 },
}

SMODS.Enhancement {
    key = 'ecstatic',
    loc_txt = {
        name = 'Ecstatic',
        text = {
            "Very Happy :D",
        }
    },
    always_scores = true,
    atlas = 'enhancements',
    pos = { x = 2, y = 0 },
}

SMODS.Enhancement {
    key = 'manic',
    loc_txt = {
        name = 'Manic',
        text = {
            "Super very Happy :D",
        }
    },
    always_scores = true,
    atlas = 'enhancements',
    pos = { x = 2, y = 0 },
}

SMODS.Enhancement {
    key = 'sad',
    loc_txt = {
        name = 'Sad',
        text = {
            "Sad T_T",
        }
    },
    always_scores = true,
    atlas = 'enhancements',
    pos = { x = 3, y = 0 },
}

SMODS.Enhancement {
    key = 'depressed',
    loc_txt = {
        name = 'Depressed',
        text = {
            "Very Sad T_T",
        }
    },
    always_scores = true,
    atlas = 'enhancements',
    pos = { x = 3, y = 0 },
}

SMODS.Enhancement {
    key = 'miserable',
    loc_txt = {
        name = 'Miserable',
        text = {
            "Super very Sad T_T",
        }
    },
    always_scores = true,
    atlas = 'enhancements',
    pos = { x = 3, y = 0 },
}