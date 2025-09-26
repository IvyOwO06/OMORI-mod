--- STEAMODDED HEADER
--- MOD_NAME: OMORI
--- MOD_ID: OMORI
--- MOD_AUTHOR: Ivy___OwO & IhartDiscopolo
--- MOD_DESCRIPTION: An OMORI mod.
--- PREFIX: OM
----------------------------------------------------------
----------- MOD CODE -------------------------------------

-- shoutout to
-- https://github.com/nh6574/VanillaRemade/
-- https://discord.com/channels/1116389027176787968/1224362333208444989
-- cryptid
-- for helping me understand how to do things with SMODS

if not OMORIMOD then
	OMORIMOD = {}
end

local mod_path = "" .. SMODS.current_mod.path
OMORIMOD.path = mod_path
OMORIMOD_config = SMODS.current_mod.config


SMODS.current_mod.optional_features = {
	retrigger_joker = true,
	post_trigger = true,
}

t2_vouch = false

-- OMORI joker pool
SMODS.ObjectType({
	key = "OMORIJokers",
	default = "[defaultJoker]",
	cards = {},
	inject = function(self)
		SMODS.ObjectType.inject(self)
	end,
})


--Load item files
local files = NFS.getDirectoryItems(mod_path .. "items")
for _, file in ipairs(files) do
	print("[OMORI] Loading lua file " .. file)
	local f, err = SMODS.load_file("items/" .. file)
	if err then
		error("[OMORI] Error loading " .. file .. ": " .. err)
	end
	f()
end

--Load lib files
local files = NFS.getDirectoryItems(mod_path .. "lib/")
for _, file in ipairs(files) do
	print("[OMORI] Loading lib file " .. file)
	local f, err = SMODS.load_file("lib/" .. file)
	if err then
		error(err)
	end
	f()
end

SMODS.Atlas({
	key = "modicon",
	path = "modicon.png",
	px = 34,
	py = 34,
})


----------------------------------------------------------
----------- MOD CODE END ----------------------------------
