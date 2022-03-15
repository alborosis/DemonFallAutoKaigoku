
wait(function() pcall(function() wait(print(wait())) end) end)
repeat wait() until game:IsLoaded()
local PlaceID = game.PlaceId
if PlaceID == 5094651510 then
    local Teleport = loadstring(game:HttpGet("https://raw.githubusercontent.com/alborosis/DemonFallAutoKaigoku/e494e82c71585f3fb05cc224f44ac307d7ed9cc7/Teleport.lua"))()
    local TableForEnv = {["LoopTimes"] = 0}
    while TableForEnv["LoopTimes"] <= 25 do TableForEnv["LoopTimes"] = TableForEnv["LoopTimes"] + 1; wait(0.1) end
    if not game:GetService("Workspace").Npcs:WaitForChild("Kaigakû"):FindFirstChildOfClass("Part") then
        Teleport()
    else if getgenv().WebhookEnabled == true then
        local data = {['username'] = 'Someone found a boss!', 
        ['content'] = game.Players.LocalPlayer.Name.." is the someone that found the boss!"
    }

        data = game:GetService("HttpService"):JSONEncode(data)
	
        local success,errorm = pcall(function()
        local response = syn.request(
            {
                Url = getgenv().Webhook,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = data
            }
        )
        end)
    end
    end
end