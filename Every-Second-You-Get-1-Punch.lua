local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local toggleState = false 
local waitTime = 8
local waitTime1 = 120

local Window = Rayfield:CreateWindow({
    Name = "Every-Second-You-Get-1-Punch",
    LoadingTitle = "Rayfield Interface Suite",
    LoadingSubtitle = "by Sirius",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "gnsGtrVK", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Every-Second-You-Get-1-Punch",
       Subtitle = "Key System",
       Note = "You Can Get The Key From The Dsicord",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })


 Rayfield:Notify({
    Title = "Discord",
    Content = "https://discord.gg/gnsGtrVK",
    Duration = 6.5,
 })

 local toggleState = false -- Variable globale pour stocker l'état actuel du bouton

--main

 local main = Window:CreateTab("Main")
 local Farming = main:CreateSection("Farming")
 local Toggle = main:CreateToggle({
    Name = "Auto win",
    CurrentValue = false,
    Flag = "AutoWinToggle",
    Callback = function(value)
        toggleState = value -- Met à jour la variable globale avec l'état actuel du bouton
        if toggleState then
            print("Toggle On")
            while toggleState do
                wait(waitTime)
                game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").Wins.Stage10.Position)
            end
        else
            print("Toggle Off")
        end
    end
})


local toggleState = false

local Toggle = main:CreateToggle({
    Name = "Auto REBIRTH",
    CurrentValue = false,
    Flag = "AutoRebirthToggle",
    Callback = function(value)
        toggleState = value
        if toggleState then
            print("Toggle On")
            while toggleState do
                wait(waitTime1)
                game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").Model.RebirthTouch.Position)
            end
        else
            print("Toggle Off")
        end
    end
})

--teleport

local teleport = Window:CreateTab("teleport")
local teleport1 = teleport:CreateSection("Teleport")


local Button = teleport:CreateButton({
    Name = "Spawn ",
    Callback = function()
        local brickPosition = game:GetService("Workspace").Eggs.Starter.PriceBrick.Position
        game.Players.LocalPlayer.Character:MoveTo(brickPosition)   
    end,
 })
local Button = teleport:CreateButton({
    Name = "Step2 ",
    Callback = function()
        local brickPosition = game:GetService("Workspace").Eggs.Rare.PriceBrick.Position

        game.Players.LocalPlayer.Character:MoveTo(brickPosition)
        
    end,
 })

 local Button = teleport:CreateButton({
    Name = "Step3 ",
    Callback = function()
        local brickPosition = game:GetService("Workspace").Eggs.Pro.PriceBrick.Position

        game.Players.LocalPlayer.Character:MoveTo(brickPosition)
        
    end,
 })

 local Button = teleport:CreateButton({
    Name = "Step4 ",
    Callback = function()
        local brickPosition = game:GetService("Workspace").Eggs.Epic.PriceBrick.Position

        game.Players.LocalPlayer.Character:MoveTo(brickPosition)
        
        
    end,
 })

 local Button = teleport:CreateButton({
    Name = "Step5 ",
    Callback = function()
        local brickPosition = game:GetService("Workspace").Eggs.Legendary.PriceBrick.Position

        game.Players.LocalPlayer.Character:MoveTo(brickPosition)
        
    end,
 })

 local Button = teleport:CreateButton({
    Name = "Step6 ",
    Callback = function()
        local brickPosition = game:GetService("Workspace").Eggs.Mythical.PriceBrick.Position

        game.Players.LocalPlayer.Character:MoveTo(brickPosition)
        
    end,
 })

 local Button = teleport:CreateButton({
    Name = "Step7 ",
    Callback = function()
        local brickPosition = game:GetService("Workspace").Eggs.Godly.PriceBrick.Position

        game.Players.LocalPlayer.Character:MoveTo(brickPosition)
        
        
    end,
 })

 local Button = teleport:CreateButton({
    Name = "Step8 ",
    Callback = function()
        local brickPosition = game:GetService("Workspace").Eggs.Dark.PriceBrick.Position
        game.Players.LocalPlayer.Character:MoveTo(brickPosition)   
    end,
 })

 local Button = teleport:CreateButton({
    Name = "Step9 ",
    Callback = function()
        local brickPosition = game:GetService("Workspace").Eggs.Void.PriceBrick.Position
        game.Players.LocalPlayer.Character:MoveTo(brickPosition)   
    end,
 })

 local Button = teleport:CreateButton({
    Name = "Step10 ",
    Callback = function()
        local brickPosition = game:GetService("Workspace").Eggs.Desert.PriceBrick.Position
        game.Players.LocalPlayer.Character:MoveTo(brickPosition)   
    end,
 })
