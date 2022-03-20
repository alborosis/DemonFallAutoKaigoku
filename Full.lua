repeat
	task.wait(0.1)
until game:IsLoaded()
getgenv().Webhook = "" -- Your discord webhook url
getgenv().WaitTimes = 2.5 -- Default is 2.5 so it will wait 2.5 secs before hopping 
getgenv().WebhookEnabled = true 
getgenv().WebhookTitle = "Someone found a boss!"
getgenv().WebhookMessage = game.Players.LocalPlayer.Name .. " is the someone that found the boss!"
loadstring(game:HttpGet("https://raw.githubusercontent.com/alborosis/DemonFallAutoKaigoku/main/File.lua"))()