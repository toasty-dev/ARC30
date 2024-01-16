local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

Rayfield:Notify({
   Title = "You loaded femhub",
   Content = "wow",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Window = Rayfield:CreateWindow({
   Name = "Femhub 69",
   LoadingTitle = "Femhub 69",
   LoadingSubtitle = "Fuck man i love femboys.",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Are you a femboy?",
      Subtitle = "Femboy?",
      Note = "FUCK ME",
      FileName = "FemKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Yes."} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Anal = Window:CreateTab("Anal Beads", 4483362458) -- Title, Image
local Section = Anal:CreateSection("No documentation so this took a little bit.")

local Button = Anal:CreateButton({
   Name = "Button of doom...",
   Callback = function()
     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   CurrentValue = false,
   Flag = "fly?", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      local plr = game.Players.LocalPlayer
      local mouse = plr:GetMouse()
       
      localplayer = plr
       
      if workspace:FindFirstChild("Core") then
      workspace.Core:Destroy()
      end
       
      local Core = Instance.new("Part")
      Core.Name = "Core"
      Core.Size = Vector3.new(0.05, 0.05, 0.05)
       
      spawn(function()
      Core.Parent = workspace
      local Weld = Instance.new("Weld", Core)
      Weld.Part0 = Core
      Weld.Part1 = localplayer.Character.LowerTorso
      Weld.C0 = CFrame.new(0, 0, 0)
      end)
       
      workspace:WaitForChild("Core")
       
      local torso = workspace.Core
      flying = true
      local speed=10
      local keys={a=false,d=false,w=false,s=false}
      local e1
      local e2
      local function start()
      local pos = Instance.new("BodyPosition",torso)
      local gyro = Instance.new("BodyGyro",torso)
      pos.Name="EPIXPOS"
      pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
      pos.position = torso.Position
      gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
      gyro.cframe = torso.CFrame
      repeat
      wait()
      localplayer.Character.Humanoid.PlatformStand=true
      local new=gyro.cframe - gyro.cframe.p + pos.position
      if not keys.w and not keys.s and not keys.a and not keys.d then
      speed=5
      end
      if keys.w then
      new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
      speed=speed+0
      end
      if keys.s then
      new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
      speed=speed+0
      end
      if keys.d then
      new = new * CFrame.new(speed,0,0)
      speed=speed+0
      end
      if keys.a then
      new = new * CFrame.new(-speed,0,0)
      speed=speed+0
      end
      if speed>10 then
      speed=5
      end
      pos.position=new.p
      if keys.w then
      gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*0),0,0)
      elseif keys.s then
      gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*0),0,0)
      else
      gyro.cframe = workspace.CurrentCamera.CoordinateFrame
      end
      until flying == false
      if gyro then gyro:Destroy() end
      if pos then pos:Destroy() end
      flying=false
      localplayer.Character.Humanoid.PlatformStand=false
      speed=100
      end
      e1=mouse.KeyDown:connect(function(key)
      if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
      if key=="w" then
      keys.w=true
      elseif key=="s" then
      keys.s=true
      elseif key=="a" then
      keys.a=true
      elseif key=="d" then
      keys.d=true
      elseif key=="x" then
      if flying==true then
      flying=false
      else
      flying=true
      start()
      end
      end
      end)
      e2=mouse.KeyUp:connect(function(key)
      if key=="w" then
      keys.w=false
      elseif key=="s" then
      keys.s=false
      elseif key=="a" then
      keys.a=false
      elseif key=="d" then
      keys.d=false
      end
      end)
      start()
   end,
})
