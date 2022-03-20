assert(getgenv, "Not supported!")

local PlaceID = game.PlaceId
local HttpService = game:GetService("HttpService")
local getgenv = getgenv

repeat
	task.wait(0.1)
until game:IsLoaded()

if PlaceID == 5094651510 then
	task.wait(getgenv().WaitTimes)
	if not game:GetService("Workspace"):FindFirstChild("Kaigaku") then
		loadstring(
		game:HttpGet(
			"https://raw.githubusercontent.com/alborosis/DemonFallAutoKaigoku/e494e82c71585f3fb05cc224f44ac307d7ed9cc7/Teleport.lua"
		)()
	)
	else
		if getgenv().WebhookEnabled == true then
			local data = {
				["username"] = "Someone found a boss!",
				["content"] = game.Players.LocalPlayer.Name .. " is the someone that found the boss!",
			}

			data = HttpService:JSONEncode(data)
			if syn then
				local success, errorm = pcall(function()
					local response = syn.request({
						Url = getgenv().Webhook,
						Method = "POST",
						Headers = {
							["Content-Type"] = "application/json",
						},
						Body = data,
					})
				end)
			else 
				local success, errorm = pcall(function()
					local response = request({
						Url = getgenv().Webhook,
						Method = "POST",
						Headers = {
							["Content-Type"] = "application/json",
						},
						Body = data,
					})
				end)
			end
		end
	end
end
