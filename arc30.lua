local library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ShaddowScripts/Main/main/Library"))()

local Main = library:CreateWindow("Test","Crimson")

local tab = Main:CreateTab("Cheats")
local tab2 = Main:CreateTab("Misc")

tab:CreateButton("Hi",function()
print("clicked")
end)

tab:CreateToggle("Farm",function(a)
print(a)
end)

tab:CreateSlider("Speed",1,100,function(speed)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end)

tab:CreateCheckbox("Aimbot",function(a)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
end)

tab2:CreateButton("Hello",function()
print("clicked")
end)

tab:Show()
