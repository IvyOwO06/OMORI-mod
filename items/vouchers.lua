SMODS.Atlas {
    key = "vouchers",
    path = "placeholdervouch.png",
    px = 72,
    py = 95,
}

-- tier 1 omori voucher
SMODS.Voucher {
    key = 'farawayvouch',
    loc_txt = {
        name = 'Faraway Town voucher something something lol',
        text = {
            "Unlocks {X:black,C:white}Omori{}"
        }
    },
    cost = 10,
    unlocked = true,
    available = true,
    atlas = 'vouchers',
    pos = { x = 0, y = 0},

    pools = 
    { 
        ['omori'] = true, 
    },
    config = {
        extra = {

        }
    },
    in_pool = function(self, args)
        return true
    end
}

-- tier 2 omori voucher
SMODS.Voucher {
    key = 'headspacevouch',
    loc_txt = {
        name = 'idk lol head space',
        text = {
            "Unlocks {C:purple}Head Space{} jokers",
        }
    },
    cost = 10,
    unlocked = true,
    available = true,
    atlas = 'vouchers',
    pos = { x = 1, y = 0},

    requires = {'v_OM_farawayvouch'},
    pools =
    {
        ['headspace'] = true,
    },
    config = {
        extra = {

        }
    },
    in_pool = function(self, args)
        return true
    end
}

-- -- bet voucher
-- SMODS.Voucher {
--     key = 'bet',
--     loc_txt = {
--         name = 'Bet',
--         text = {
--             "{C:gamble}Gamble{} cards can be",
--             "bought from the store"
--         }
--     },
--     cost = 10,
--     unlocked = true,
--     available = true,
--     -- requires = 'v_finnmod_gamble'

--     atlas = 'vouchers', 
--     pos = { x = 0, y = 0 },

--     pools = { },

--     config = {
--         extra = { }
--     },

--     redeem = function(self, card)
--         G.E_MANAGER:add_event(Event({
-- 			func = function()
-- 				G.GAME.gamble_rate = (G.GAME.gamble_rate or 0) + 3
-- 				return true
-- 			end,
-- 		}))
--         G.GAME.pool_flags.gamble_redeemed = true
--     end,

-- }

-- -- All-in voucher
-- SMODS.Voucher {
--     key = 'allIn',
--     loc_txt = {
--         name = 'All-in',
--         text = {
--             "Doubles all {C:attention}listed{}",
--             "{C:green,E:1}probabilities{}",
--             "{inactive}(ex:{} {C:green}1 in 3{} {C:inactive}->{} {C:green}2 in 3{}{C:inactive}){}"
--         }
--     },
--     cost = 10,
--     unlocked = true,
--     available = true,
--     requires = {'v_finnmod_gamble'},

--     atlas = 'vouchers', 
--     pos = { x = 1, y = 0 },

--     pools = { },

--     config = {
--         extra = { }
--     },

--     redeem = function(self, card)
--         for k, v in pairs(G.GAME.probabilities) do
--             G.GAME.probabilities[k] = v * 2
--         end

--         G.GAME.pool_flags.gamble2_redeemed = true

--         G.E_MANAGER:add_event(Event({
--             func = function()
--                 return true
--             end,
--         }))
--     end
-- }

-- -- debt voucher
-- if (SMODS.Mods["Cryptid"] or {}).can_load then
--     SMODS.Voucher {
--     key = 'debt',
--     loc_txt = {
--         name = 'Debt',
--         text = {
--             "Nothing yet again >:)",
--             "aww man :("
--         }
--     },
--     cost = 10,
--     unlocked = true,
--     available = true,
--     requires = {'v_finnmod_gamble', 'v_finnmod_gamble2'},

--     atlas = 'vouchers', 
--     pos = { x = 2, y = 0 },

--     pools = { },

--     config = {
--         extra = { }
--     },

--     redeem = function(self, card)
--         G.E_MANAGER:add_event(Event({
--             func = function()
--                 return true
--             end
--         }))
--         G.GAME.pool_flags.gamble3_redeemed = true
--     end
--     } 
-- end