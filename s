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
      Enabled = false,
      Invite = "6uApH7VBmn", -- The Discord invite code, do not include discord.gg/
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Diabolus | @lv#7305",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/6uApH7VBmn)",
      FileName = "Get Key",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "V8uHkA39lr8xY6Simgnq"
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

local Spam = Main:CreateToggle({
   Name = "Spam Emojis",
   CurrentValue = false,
   Flag = "Spam", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   Spam:Set(false)
   if Spam == false then
   Spam:Set(true)
   while true do
   
   wait(1)
   local A_1 = "😈👿😈👿😈👿😈👿😈👿😈👿😈👿😈👿😈👿😈👿😈👿😈👿😈👿👿👿😈👿😈😈😈😈😈👿😈😈"
   local A_2 = "All"
   local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
   Event:FireServer(A_1, A_2)
   end
   end
   if Spam == true then
   Spam = false
   end
   end,
})





RayField:LoadConfiguration()
