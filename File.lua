assert(getgenv, "Not supported!")

local TableForEnv = {["String"] = "https://hooks.hyra.io/"}

for i,v in ipairs(string.split(getgenv().Webhook, "/")) do
	if i >3 then
		TableForEnv["String"] = TableForEnv["String"].."/"..v
	end
end

getgenv().Webhook = TableForEnv["String"]

if game.PlaceId == 5094651510 then
	if not game:GetService("Workspace"):FindFirstChild("Kaigaku") then
		task.wait(getgenv().WaitTimes)
        loadstring(
            game:HttpGet(
                "https://raw.githubusercontent.com/alborosis/DemonFallAutoKaigoku/e494e82c71585f3fb05cc224f44ac307d7ed9cc7/Teleport.lua"
            )
        )()
	else
		if getgenv().WebhookEnabled == true then
			local data = {
				["username"] = getgenv().WebhookTitle,
				["content"] = getgenv().WebhookMessage,
			}

			data = game:GetService("HttpService"):JSONEncode(data)
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