SMODS.Rarity {
    key = 'hs',
    loc_txt = {
        name = 'Head Space',
    },
    badge_colour = HEX("9f3fbf"),
    default_weight = 0,
    order = 5,
}

SMODS.Rarity {
    key = 'fa',
    default_weight = 0.05,
    loc_txt = {
        name = 'Faraway Town'
    },
    badge_colour = HEX("599669"),
    get_weight = function(self, weight, object_type)
        return weight
    end,
    order = 6
}

SMODS.Rarity {
    key = 'od',
    default_weight = 0.03,
    loc_txt = {
        name = 'Omori did not succumb'
    },
    badge_colour = HEX("000000"),
    get_weight = function(self, weight, object_type)
        return weight
    end,
    order = 7
}

SMODS.Rarity {
    key = 'ow',
    default_weight = 0.03,
    loc_txt = {
        name = 'Omori will not succumb'
    },
    badge_colour = HEX("000000"),
    get_weight = function(self, weight, object_type)
        return weight
    end,
    order = 7
}

SMODS.Rarity {
    key = 'jimbo',
    loc_txt = {
        name = 'JIMBO'
    },
    badge_colour = HEX("ff2200"),
    default_weight = 0,
    order = 1000,
}