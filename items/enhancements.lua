SMODS.Atlas {
    key = 'enhancements',
    path = 'enhancements.png',
    px = 71,
    py = 95
}

SMODS.Enhancement {
    key = "angry",
    loc_txt = {
        name = "Angry",
        text = {
            "{C:red}+#1#{} Mult",
            "Currently: {C:inactive}#2#/5{}"
        }
    },
    always_scores = true,
    atlas = "enhancements",
    pos = { x = 1, y = 0 },

    config = { extra = { mult = 4, plays = 0 } },

    loc_vars = function(self, info_queue, card)
        local mult = (card and card.ability and card.ability.extra and card.ability.extra.mult)

        local plays = (card and card.ability and card.ability.extra and card.ability.extra.plays) or 0

        return {
            vars = {
                mult,
                plays
            }
        }
    end,

    calculate = function(self, card, context)
        if not (context.main_scoring and context.cardarea == G.play) then
            return
        end

        card.ability.extra.plays = (card.ability.extra.plays or 0) + 1

        if card.ability.extra.plays >= 5 then
            card.ability.extra.plays = 0
            card:set_ability("m_OM_furious")
            card:juice_up()
        end

        return {
            mult = card.ability.extra.mult,
            card = card
        }
    end,
}


SMODS.Enhancement {
    key = 'furious',
    loc_txt = {
        name = 'Furious',
        text = {
            "{C:red}+#1#{} Mult",
            "Currently: {C:inactive}#2#/5{}"
        }
    },
    always_scores = true,
    atlas = 'enhancements',
    pos = { x = 1, y = 0 },

    config = { extra = {mult = 20, plays = 0 } },

    loc_vars = function(self, info_queue, card)
        local mult = (card and card.ability and card.ability.extra and card.ability.extra.mult)

        local plays = (card and card.ability and card.ability.extra and card.ability.extra.plays) or 0

        return {
            vars = {
                mult,
                plays
            }
        }
    end,

    calculate = function(self, card, context)
        if not (context.main_scoring and context.cardarea == G.play) then
            return
        end

        card.ability.extra.plays = (card.ability.extra.plays or 0) + 1

        if card.ability.extra.plays >= 5 then
            card.ability.extra.plays = 0
            card:set_ability("m_OM_enraged")
            card:juice_up()
        end

        return {
            mult = card.ability.extra.mult,
            card = card
        }
    end,
}

SMODS.Enhancement {
    key = 'enraged',
    loc_txt = {
        name = 'Enraged',
        text = {
            "{X:mult,C:white}X#1#{} Mult",
        }
    },
    always_scores = true,
    atlas = 'enhancements',
    pos = { x = 1, y = 0 },

    config = { extra = {Xmult = 3} },

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.Xmult,
            }
        }
    end,

    calculate = function(self, card, context)
        if not (context.main_scoring and context.cardarea == G.play) then
            return
        end

        return {
            x_mult = card.ability.extra.Xmult,
            card = card
        }
    end,
}

SMODS.Enhancement {
    key = 'happy',
    loc_txt = {
        name = 'Happy',
        text = {
            "{C:gold}+$#1#",
            "Currently: {C:inactive}#2#/5{}"
        }
    },
    always_scores = true,
    atlas = 'enhancements',
    pos = { x = 2, y = 0 },

    config = { extra = {gold = 3, plays = 0 } },

    loc_vars = function(self, info_queue, card)
        local gold = (card and card.ability and card.ability.extra and card.ability.extra.gold)

        local plays = (card and card.ability and card.ability.extra and card.ability.extra.plays) or 0

        return {
            vars = {
                gold,
                plays
            }
        }
    end,

    calculate = function(self, card, context)
        if not (context.main_scoring and context.cardarea == G.play) then
            return
        end

        card.ability.extra.plays = (card.ability.extra.plays or 0) + 1

        if card.ability.extra.plays >= 5 then
            card.ability.extra.plays = 0
            card:set_ability("m_OM_ecstatic")
            card:juice_up()
        end

        return {
            p_dollars = card.ability.extra.gold,
            card = card
        }
    end,
}

SMODS.Enhancement {
    key = 'ecstatic',
    loc_txt = {
        name = 'Ecstatic',
        text = {
            "{C:gold}+$#1#",
            "Currently: {C:inactive}#2#/5{}"
        }
    },
    always_scores = true,
    atlas = 'enhancements',
    pos = { x = 2, y = 0 },

    config = { extra = {gold = 10, plays = 0 } },

    loc_vars = function(self, info_queue, card)
        local gold = (card and card.ability and card.ability.extra and card.ability.extra.gold)

        local plays = (card and card.ability and card.ability.extra and card.ability.extra.plays) or 0

        return {
            vars = {
                gold,
                plays
            }
        }
    end,

    calculate = function(self, card, context)
        if not (context.main_scoring and context.cardarea == G.play) then
            return
        end

        card.ability.extra.plays = (card.ability.extra.plays or 0) + 1

        if card.ability.extra.plays >= 5 then
            card.ability.extra.plays = 0
            card:set_ability("m_OM_manic")
            card:juice_up()
        end

        return {
            p_dollars = card.ability.extra.gold,
            card = card
        }
    end,
}

SMODS.Enhancement {
    key = 'manic',
    loc_txt = {
        name = 'Manic',
        text = {
            "{C:gold}+$#1#",
        }
    },
    always_scores = true,
    atlas = 'enhancements',
    pos = { x = 2, y = 0 },

    config = { extra = {gold = 25}},

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.gold,
            }
        }
    end,

    calculate = function(self, card, context)
        if not (context.main_scoring and context.cardarea == G.play) then
            return
        end

        return {
            p_dollars = card.ability.extra.gold,
            card = card
        }
    end,
}

SMODS.Enhancement {
    key = 'sad',
    loc_txt = {
        name = 'Sad',
        text = {
            "{C:chips}+#1#{} Chips",
            "Currently: {C:inactive}#2#/5{}"
        }
    },
    always_scores = true,
    atlas = 'enhancements',
    pos = { x = 3, y = 0 },

    config = { extra = {chips = 30, plays = 0 } },

    loc_vars = function(self, info_queue, card)
        local chips = (card and card.ability and card.ability.extra and card.ability.extra.chips)

        local plays = (card and card.ability and card.ability.extra and card.ability.extra.plays) or 0

        return {
            vars = {
                chips,
                plays
            }
        }
    end,

    calculate = function(self, card, context)
        if not (context.main_scoring and context.cardarea == G.play) then
            return
        end

        card.ability.extra.plays = (card.ability.extra.plays or 0) + 1

        if card.ability.extra.plays >= 5 then
            card.ability.extra.plays = 0
            card:set_ability("m_OM_depressed")
            card:juice_up()
        end

        return {
            chips = card.ability.extra.chips,
            card = card
        }
    end,
}

SMODS.Enhancement {
    key = 'depressed',
    loc_txt = {
        name = 'Depressed',
        text = {
            "{C:chips}+#1#{} Chips",
            "Currently: {C:inactive}#2#/5{}"
        }
    },
    always_scores = true,
    atlas = 'enhancements',
    pos = { x = 3, y = 0 },

    config = { extra = {chips = 100, plays = 0 } },

    loc_vars = function(self, info_queue, card)
        local chips = (card and card.ability and card.ability.extra and card.ability.extra.chips)

        local plays = (card and card.ability and card.ability.extra and card.ability.extra.plays) or 0

        return {
            vars = {
                chips,
                plays
            }
        }
    end,

    calculate = function(self, card, context)
        if not (context.main_scoring and context.cardarea == G.play) then
            return
        end

        card.ability.extra.plays = (card.ability.extra.plays or 0) + 1

        if card.ability.extra.plays >= 5 then
            card.ability.extra.plays = 0
            card:set_ability("m_OM_miserable")
            card:juice_up()
        end

        return {
            chips = card.ability.extra.chips,
            card = card
        }
    end,
}

SMODS.Enhancement {
    key = 'miserable',
    loc_txt = {
        name = 'Miserable',
        text = {
            "{X:chips,C:white}X#1#{} Chips",
        }
    },
    always_scores = true,
    atlas = 'enhancements',
    pos = { x = 3, y = 0 },

    config = { extra = {Xchips = 4}},

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.Xchips,
            }
        }
    end,

    calculate = function(self, card, context)
        if not (context.main_scoring and context.cardarea == G.play) then
            return
        end

        return {
            x_chips = card.ability.extra.Xchips,
            card = card
        }
    end,
}