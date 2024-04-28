local repo = "https://raw.githubusercontent.com/NotZyixx/traphubreworked"
local Id = game.PlaceId
local GameId = game.GameId

local Games = {
	["AA"] = {
		FileName = getgenv().BetaScript and "AnimeAdventures-Rewrite" or "Anime%20Adventures",
		PlaceId = { 3183403065 },
		GameName = "Anime Adventures",
	},
	["RoGhoul"] = {
		FileName = "RoGhoul",
		PlaceId = { 914010731 },
		GameName = "RoGhoul",
	},
	["Blade Ball"] = {
		FileName = "BladeBall",
		PlaceId = { 13772394625 },
		GameName = "Blade Ball",
	},
	["ASX"] = {
		FileName = "AnimeSouls",
		PlaceId = { 15367026228 },
		GameName = "Anime Souls Simulator X",  
        },
	["ALS"] = {
		FileName = "AnimeLast",
		PlaceId = { 12886143095 },
		GameName = "Anime Last",  
	},
}

local function LoadScript(name)
	local data = Games[name]
	getgenv().GameName = data.GameName

	loadstring(game:HttpGet(repo .. data.FileName .. ".lua"))()
end

for name, data in next, Games do
	for _, v in next, data.PlaceId do
		if Id == v or GameId == v then LoadScript(name) end
	end
end
