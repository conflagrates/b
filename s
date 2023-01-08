getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "Diabolus | @lv#7305",
   LoadingTitle = "...",
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
   Title = "Diabolus Unlocked",
   Content = ".gg/6uApH7VBmn",
   Duration = 3.0,
   Image = 3610242116,
})


local Home = Window:CreateTab("Home", 4370345169)
local HomeArea = Home:CreateSection("Homepage")
local HomeButton = HomeArea:CreateButton({
   Name = "Discord",
   Callback = function()
   Rayfield:Notify({
   Title = "Get Your Key!",
   Content = "discord.gg/6uApH7VBmn",
   Duration = 6.0,
   Image = 4384404017,
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

local Main = Window:CreateTab("Main", 4483346361)
local MainSection = Main:CreateSection("Mainpage")
local MButton1 = MainSection:CreateButton({
   Name = "Fly (G to toggle)",
   Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/8uzbykJb", true))()
   end,
})



RayField:LoadConfiguration()
