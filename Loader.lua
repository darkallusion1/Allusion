if not game:IsLoaded() then
    repeat task.wait(3) until game:IsLoaded()
end
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local PlaceId = game.PlaceId
local Games = {
    [0] = "",
}
local FoundGame = Games[PlaceId] or false
if FoundGame then
    return loadstring(game:HttpGet(FoundGame))
else
    return false
end

