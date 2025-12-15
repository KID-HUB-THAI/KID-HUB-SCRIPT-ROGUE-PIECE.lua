local Luna = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Luna-Interface-Suite/refs/heads/master/source.lua", true))()
local Window = Luna:CreateWindow({
    Name = "KID HUB ไทย", -- This Is Title Of Your Window
    Subtitle = nil, -- A Gray Subtitle next To the main title.
    LogoID = "82795327169782", -- The Asset ID of your logo. Set to nil if you do not have a logo for Luna to use.
    LoadingEnabled = true, -- Whether to enable the loading animation. Set to false if you do not want the loading screen or have your own custom one.
    LoadingTitle = "THANKS FOR USE", -- Header for loading screen
    LoadingSubtitle = "by Nebula Softworks", -- Subtitle for loading screen

    ConfigSettings = {
        RootFolder = nil, -- The Root Folder Is Only If You Have A Hub With Multiple Game Scripts and u may remove it. DO NOT ADD A SLASH
        ConfigFolder = "Big Hub" -- The Name Of The Folder Where Luna Will Store Configs For This Script. DO NOT ADD A SLASH
    },

    KeySystem = false, -- As Of Beta 6, Luna Has officially Implemented A Key System!
    KeySettings = {
        Title = "มีคีย์",
        Subtitle = "KEY ",
        Note = "Best Key System Ever! Also, Please Use A HWID Keysystem like Pelican, Luarmor etc. that provide key strings based on your HWID since putting a simple string is very easy to bypass",
        SaveInRoot = false, -- Enabling will save the key in your RootFolder (YOU MUST HAVE ONE BEFORE ENABLING THIS OPTION)
        SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
        Key = {"Roplox7005XD"}, -- List of keys that will be accepted by the system, please use a system like Pelican or Luarmor that provide key strings based on your HWID since putting a simple string is very easy to bypass
        SecondAction = {
            Enabled = true, -- Set to false if you do not want a second action,
            Type = "https://discord.gg/DDFTgSEBxg", -- Link / Discord.
            Parameter = "DDFTgSEBxg" -- If Type is Discord, then put your invite link (DO NOT PUT DISCORD.GG/). Else, put the full link of your key system here.
        }
    }
})
local Tab = Window:CreateTab({
    Name = "รัน Script",
    Icon = "view_in_ar",
    ImageSource = "Material",
    ShowTitle = true -- This will determine whether the big header text in the tab will show
})
local Button = Tab:CreateButton({
    Name = "Run more script ",
    Description = กดเราสิเพื่อน, -- Creates A Description For Users to know what the button does (looks bad if you use it all the time),
        Callback = function()
-- สร้างตัวแปร Toggle (เก็บสถานะ)
getgenv().ObservationToggle = false

local Button = Tab:CreateButton({
    Name = "Observation Toggle",
    Description = "กดเพื่อเปิด/ปิด Loop",
    Callback = function()

        -- สลับสถานะ
        getgenv().ObservationToggle = not getgenv().ObservationToggle

        if getgenv().ObservationToggle then
            print("Observation : ON")

            task.spawn(function()
                while getgenv().ObservationToggle do
                    local args = {
                        "Server",
                        "Misc",
                        "Observation",
                        1
                    }

                    game:GetService("ReplicatedStorage")
                        :WaitForChild("Remotes")
                        :WaitForChild("Serverside")
                        :FireServer(unpack(args))

                    task.wait(1) -- ปรับความถี่ได้
                end
            end)

        else
            print("Observation : OFF")
        end
    end
})
         -- The function that takes place when the button is pressed
        end
})
