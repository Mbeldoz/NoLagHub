local HttpGet, GameId = game.HttpGet, game.GameId
local Games = loadstring(HttpGet(game, "https://raw.githubusercontent.com/HeadLockFX/NoLag/refs/heads/main/GameList.lua"))() or {}

local data = Games[GameId]
if data then
    (data.url and pcall(function() loadstring(HttpGet(game, data.url))() end)) or 
    (data.altUrl and pcall(function() loadstring(HttpGet(game, data.altUrl))() end)) or 
    print(`Failed to load: {GameId}`)
end
