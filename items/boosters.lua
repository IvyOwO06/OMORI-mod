SMODS.Atlas {
    key = "boosters",
    path = "boosters.png",
    px = 72,
    py = 95,
}

-- small pack
SMODS.Booster {
    key = "boosterSmall",
    cost = 4,
    atlas = "boosters",
    weight = 1,
    pos = { x = 0, y = 0 },
    draw_hand = true,
    kind = "omori",

    loc_txt = {
        name = 'Omori Pack',
        text = {
            "[placeholder]",
        },
        group_name = {"Omori Pack"},
    },

    config = { extra = 3, choose = 1 },

}

-- jumbo pack
SMODS.Booster {
    key = "boosterJumbo",
    cost = 6,
    atlas = "boosters",
    weight = 0.8,
    pos = { x = 2, y = 0 },
    draw_hand = true,
    kind = "omori",

    loc_txt = {
        name = 'Jumbo Omori Pack',
        text = {
            "[placeholder]",
        },
        group_name = {"Big Omori Pack"},
    },

    config = { extra = 4, choose = 1 },

}

-- mega pack
SMODS.Booster {
    key = "boosterMega",
    cost = 6,
    atlas = "boosters",
    weight = 0.25,
    pos = { x = 3, y = 0 },
    draw_hand = true,
    kind = "omori",

    loc_txt = {
        name = 'Mega Omori Pack',
        text = {
            "[placeholder]",
        },
        group_name = {"Mega Omori Pack"},
    },

    config = { extra = 5, choose = 2 },

}