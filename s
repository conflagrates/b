getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "Diabolus | @lv#7305",
   LoadingTitle = "Diabolus | Loading",
   LoadingSubtitle = "made by Louis",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Diabolus"
   },
   Discord = {
      Enabled = true,
      Invite = "6uApH7VBmn", -- The Discord invite code, do not include discord.gg/
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Diabolus | @lv#7305",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/6uApH7VBmn)",
      FileName = "Enter Key",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "louis.v"
   }
})

Rayfield:Notify({
   Title = "Diabolus Loaded",
   Content = ".gg/6uApH7VBmn",
   Duration = 3.0,
})


local Home = Window:CreateTab("Home")
local HomeArea = Home:CreateSection("Homepage")
local HomeButton = Home:CreateButton({
   Name = "Discord",
   Callback = function()
   Rayfield:Notify({
   Title = "Get Your Key!",
   Content = "discord.gg/6uApH7VBmn",
   Duration = 6.0,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "alr",
         Callback = function()
         print("brodie said alr lmaoooo")
      end
   },
},
})
   end,
})

local Main = Window:CreateTab("Main")
local MainArea = Main:CreateSection("Mainpage")

local Fly = Main:CreateButton({
   Name = "Fly (G to toggle)",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/8uzbykJb", true))()
   end,
})

local Teleport = Main:CreateButton({
   Name = "Click Teleport (Tool)",
   Callback = function()
      mouse = game.Players.LocalPlayer:GetMouse()
      tool = Instance.new("Tool")
      tool.RequiresHandle = false
      tool.Name = "Click Teleport"
      tool.Activated:connect(function()
      local ps = mouse.Hit+Vector3.new(0,2.5,0)
      ps = CFrame.new(ps.X,ps.Y,ps.Z)
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ps
      end)
      tool.Parent = game.Players.LocalPlayer.Backpack
   end,
})

local Run = Main:CreateButton({
   Name = "Run (toggle L-CTRL)",
   Callback = function()
   local Character = game:GetService("Players").LocalPlayer.Character
      local Run = true
      
      local userInputService = game:GetService("UserInputService")
      userInputService.InputBegan:Connect(function(R)
	   if R.KeyCode == Enum.KeyCode.LeftControl then
		if Run then
			Run = false
			Character.Humanoid.WalkSpeed = 76 --walk speed
		else
			Run = true
			Character.Humanoid.WalkSpeed = 16
		end
	end
end)
   end,
})

local Shittalk = Main:CreateButton({
   Name = "Talk Shit",
   Callback = function()
   local args = {
    [1] = "Man get yo rusty dusty musty crusty lookin like a florida-man, probably pan, you like kids so u an oldman, wannabe role model, goin for kids full throttle, drinking from a small bottle, monkey.",
    [2] = "All"
}

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
   end,
})

local Idle = Main:CreateButton({
   Name = "Anti-Idle",
   Callback = function()
   for i,v in pairs(getconnections(game.Players.LocalPlayer.Idled))do
	v:Disable()
	end
	end,
})

local Trolling = Window:CreateTab("Trolling")
local Bypasses = Trolling:CreateSection("Bypasses")

local Bypass = Trolling:CreateButton({
   Name = "Chat Bypasser (Q)",
   Callback = function()
 	 _G.Keybind = 'Q'
	loadstring(game:HttpGet("https://raw.githubusercontent.com/synnyyy/synergy/additional/betterbypasser",true))()
	end,
})

local FEScripts = Trolling:CreateSection("FE Scripts")

local Snake = Trolling:CreateButton({
   Name = "R6 Snake",
   Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/euronetic/b/main/snake",true))()
	end,
})

local PlanePlane = Trolling:CreateButton({
   Name = "R6 Toy Plane",
   Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/euronetic/b/main/toy%20plane",true))()
	end,
})

local Soccer = Trolling:CreateButton({
   Name = "R6 World Cup (ANY 6 HATS)",
   Callback = function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Razzer35/a/main/Soccer%20Ball"))()
	end,
})

local Amogus = Trolling:CreateButton({
   Name = "R6 Amogus",
   Callback = function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Razzer35/a/main/amogus"))()
	end,
})

local Suicide = Trolling:CreateButton({
   Name = "R6 Neck Snap",
   Callback = function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Razzer35/a/main/Neck%20Snap"))()
	end,
})

local Marble = Trolling:CreateButton({
   Name = "R6 Marble",
   Callback = function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Razzer35/a/main/Marble"))()
	end,
})

local AllSeeingScythe = Trolling:CreateButton({
   Name = "R6 All Seeing Scythe",
   Callback = function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/euronetic/b/main/all%20seeing%20scythe"))()
	end,
})

local Dog = Trolling:CreateButton({
   Name = "R6 Dog",
   Callback = function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/euronetic/b/main/dog"))()
	end,
})

local Krystal = Trolling:CreateButton({
   Name = "R15 & R6 Krystal Dance (PRESS F9)",
   Callback = function()
	loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/e51327540d1ba5ede244c459dbdb5a0e/raw/6320fe344ac51a311ef7c9f8d5c3924b1a7c3969/Krystal%2520Dance'))()
	end,
})



RayField:LoadConfiguration()
