wait(function() pcall(function() wait(print(wait())) end) end)
repeat wait() until game:IsLoaded()
local TableForEnv = {["LoopTimes"] = 0}
while TableForEnv["LoopTimes"] <= 25 do TableForEnv["LoopTimes"] = TableForEnv["LoopTimes"] + 1; wait(0.1) end
if not game:GetService("Workspace").Npcs:WaitForChild("Kaigakû"):FindFirstChildOfClass("Part") then
    game:GetService("TeleportService"):Teleport(5094651510, game.Players.LocalPlayer)
end
