local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Radiance",
    LoadingTitle = "The best script",
    LoadingSubtitle = "by Radiant",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Radi Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

local MainTab = Window:CreateTab("Home", 4483362458) -- Title, Image
local Section = MainTab:CreateSection("Section")
local Button = MainTab:CreateButton({
    Name = "Autoclick",
    Callback = function()
        -- Constants
local LOOP_DELAY = 0.001 -- 10 milliseconds (in seconds)

-- Function to fire the RemoteEvent to the server
local function fireRemoteEvent()
    game:GetService("Players").LocalPlayer.Character.sword.Handle.up.RemoteEvent:FireServer()
end

-- Loop function
local function onLoop()
    fireRemoteEvent()
end

-- Start the loop
while true do
    onLoop()
    wait(LOOP_DELAY)
end
    end,
 })
