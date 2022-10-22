getgenv().Universal = true -- SET THIS TO ' true  / false ' FOR THE UNIVERSAL HUB IF THE GAME IS NOT COMPATIBLE
local ts = game:GetService("TweenService")

if game.PlaceId == 537413528 then
    
    print("BBAFT | BUILD A BOAT FOR TREASURE")
    local BBAFT = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = BBAFT:MakeWindow({Name = "Helix Hub | Build A Boat For Treasure", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
    BBAFT:MakeNotification({
        Name = "Infomartion",
        Content = "Killed To Get Succeful Script Execution",
        Image = "rbxassetid://4483345998",
        Time = 3.5
    })

    --Reset

    game:GetService"Players".LocalPlayer.Character.Humanoid.Health = -1
    wait(6)

    --AntiAfk

    BBAFT:MakeNotification({
        Name = "Game",
        Content = "Anti-Afk Activated",
        Image = "rbxassetid://4483345998",
        Time = 3.5
    })
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)

    --Getgenv

    getgenv().WantedChest = "Common"
    getgenv().ChestAmount = 1
    getgenv().Morph = nil
    local water = game:GetService"Players".LocalPlayer.Character:WaitForChild"WaterDetector"

    --Tabs
    local Autofarm = Window:MakeTab({
        Name = "Autofarm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    local Chest = Window:MakeTab({
        Name = "Chests",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    local Shop = Window:MakeTab({
        Name = "Shop",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    local Character = Window:MakeTab({
        Name = "Character",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    local Misc = Window:MakeTab({
        Name = "Misc",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    local Credits = Window:MakeTab({
        Name = "Credits",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    --Sections

    local Important = Autofarm:AddSection({
        Name = " > IMPORTANT < "
    })
    local AV = Autofarm:AddSection({
        Name = "Autofarm Toggle"
    })
    local MVM = Character:AddSection({
        Name = "Movement"
    })
    local Morph = Character:AddSection({
        Name = "Morph"
    })
    local OTHERS = Character:AddSection({
        Name = "Others"
    })
    local Chest = Chest:AddSection({
        Name = "Chest"
    })
    local Tools = Misc:AddSection({
        Name = "Tools"
    })
    local Tool = Shop:AddSection({
	Name = "Tools"
    })
    local Code = Misc:AddSection({
        Name = "Codes"
    })
    local Water = Misc:AddSection({
        Name = "Water"
    })

    --Buttons

    OTHERS:AddButton({
        Name = "Reset Movement Stats",
        Callback = function()
            game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").WalkSpeed = 16
            game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").JumpPower = 50
            game:GetService("Workspace").Gravity = 196.2
        end    
    })
    Chest:AddButton({
        Name = "Buy Selected Chest",
        Callback = function()
            local A_1 = getgenv().WantedChest
            local A_2 = getgenv().ChestAmount
            local Event = game:GetService("Workspace").ItemBoughtFromShop
            Event:InvokeServer(A_1, A_2)
             
        end    
    })
    Chest:AddButton({
        Name = "Hide Chest Item's, Hide Chest Background",
        Callback = function()
            game:GetService("Players").LocalPlayer.PlayerGui.NoChestAnimation.BlackBackground.Visible = false
            game:GetService("Players").LocalPlayer.PlayerGui.NoChestAnimation.Items.Visible = false
        end    
    })
    Chest:AddButton({
        Name = "Show Chest Item's, Show Chest Background",
        Callback = function()
            game:GetService("Players").LocalPlayer.PlayerGui.NoChestAnimation.BlackBackground.Visible = true
            game:GetService("Players").LocalPlayer.PlayerGui.NoChestAnimation.Items.Visible = true
        end    
    })
    Tools:AddButton({
        Name = "Get Every Tools",
        Callback = function()
            for i,v in pairs(game:GetService("ReplicatedStorage").BuildingParts:GetChildren()) do
                if v:IsA("Tool") then
                    local tool = v:Clone()
                    tool.Parent = game:GetService("Players").LocalPlayer.Backpack
                end
            end
        end    
    })
    Credits:AddButton({
        Name = "Owner",
        Callback = function()
            setclipboard("https://www.roblox.com/users/2660891908/profile")
            BBAFT:MakeNotification({
                Name = "Notification",
                Content = "Copied Owner Roblox User",
                Image = "rbxassetid://4483345998",
                Time = 3.5
            })  
        end

    })
    Credits:AddButton({
        Name = "Discord",
        Callback = function()
            setclipboard("https://discord.gg/DKg89kpVrX")
            BBAFT:MakeNotification({
                Name = "Notification",
                Content = "Copied Discord",
                Image = "rbxassetid://4483345998",
                Time = 3.5
            })  
        end  

    })
    Credits:AddButton({
        Name = "UI Library",
        Callback = function()
            setclipboard("https://github.com/shlexware/Orion/blob/main/Documentation.md")
            BBAFT:MakeNotification({
                Name = "Notification",
                Content = "Copied UI Library Link",
                Image = "rbxassetid://4483345998",
                Time = 3.5
            })
        end    

    })
    Credits:AddButton({
        Name = "Version",
        Callback = function()
            BBAFT:MakeNotification({
                Name = "Helix Hub",
                Content = "Helix Hub Is In v0.0.1",
                Image = "rbxassetid://4483345998",
                Time = 3.5
            })  
        end  

    })
    Credits:AddButton({
        Name = "Destroy GUI",
        Callback = function()
            BBAFT:Destroy()
        end    
    })
    Tool:AddButton({
        Name = "Buy Every Tools | 18500 Gold Needed",
        Callback = function()
           for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.MainFrame.TabFrame.ShopFrame.ScrollingFrameChests["Frame_002"]:GetChildren()) do
                if v:IsA("ImageButton") then
                    local A_1 = v.Name
                    local A_2 = 1
                    local Event = game:GetService("Workspace").ItemBoughtFromShop
                    Event:InvokeServer(A_1, A_2)
                end
           end
        end    
    })
    
    --Toggles

    Important:AddToggle({
        Name = "IMPORANT TOGGLE",
        Default = false,
        Callback = function(v)
            getgenv().Toggle = v
            while getgenv().Toggle do
                if not getgenv().Toggle then return end
                game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Velocity = Vector3.new(0,3.85,0)
                wait()
            end
        end    
    })
    AV:AddToggle({
        Name = "Autofarm Toggle",
        Default = false,
        Callback = function(v)
            getgenv().Autofarm = v
            while getgenv().Autofarm do
                if not getgenv().Autofarm then return end
                game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name].HumanoidRootPart.CFrame = CFrame.new(-56.6623573, 8.82741737, -157.315018, -0.999948502, 0.00253420905, -0.00982726179, -6.34432507e-09, 0.968321443, 0.249706924, 0.0101487581, 0.249694064, -0.968271613)
                ts:Create(game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name].HumanoidRootPart,TweenInfo.new(20,Enum.EasingStyle.Linear),{CFrame = CFrame.new(-59.3210373, 74.8714142, 8711.30762, -0.999997079, -0.000462437078, 0.00235962938, 1.0104892e-08, 0.981331408, 0.192324325, -0.00240451633, 0.192323759, -0.981328607)}):Play()
                wait(20)
                ts:Create(game:GetService("Workspace")[game:GetService("Players").LocalPlayer.Name].HumanoidRootPart,TweenInfo.new(2.5,Enum.EasingStyle.Linear),{CFrame = game:GetService("Workspace").BoatStages.NormalStages.TheEnd.GoldenChest.Trigger.CFrame}):Play()
                wait(2.8)
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health = -1
                wait(20)
                local Event = game:GetService("Workspace").ClaimRiverResultsGold
                Event:FireServer()
            end
        end    
    })
    Chest:AddToggle({
        Name = "Auto Buy Selected Chest",
        Default = false,
        Callback = function(v)
            getgenv().BuyChest = v

            while getgenv().BuyChest do
                if not getgenv().BuyChest then return end
                local A_1 = getgenv().WantedChest
                local A_2 = getgenv().ChestAmount
                local Event = game:GetService("Workspace").ItemBoughtFromShop
                Event:InvokeServer(A_1, A_2)
                wait(0.25)
            end
        end    
    })
    Code:AddButton({
        Name = "Redeem Every Permanet Code",
        Callback = function()
            local TextBox = game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.MainFrame.TabFrame.SettingsFrame.ScrollingFrameSettings.PromoFrame.CodeBox
            local codelist = {
            "hi",
            "Squid Army",
            "=D",
            "=P",
            "chillthrill709 was here",
            "Happy Valentine's day",
            "Lurking Legend"
            }
            local function Code()
                for i,v in pairs(codelist) do
                TextBox.Text = v

                wait(0.15)
                firesignal(game:GetService("Players").LocalPlayer.PlayerGui.ShopGui.MainFrame.TabFrame.SettingsFrame.ScrollingFrameSettings.PromoFrame.RedeemButton.MouseButton1Click)
                end
            end
            Code()

        end    
    })
    Morph:AddButton({
        Name = "Transform | It Dosen't work lmao",
        Callback = function()
            if getgenv().Morph == "Fox" then
                local A_1 = "FoxCharacter"
                local Event = game:GetService("Workspace").ChangeCharacter
                Event:FireServer(A_1)
            elseif getgenv().Morph == "Chicken" then
                local A_1 = "ChickenCharacter"
                local Event = game:GetService("Workspace").ChangeCharacter
                Event:FireServer(A_1)
            elseif getgenv().Morph == "Penguin" then
                local A_1 = "PenguinCharacter"
                local Event = game:GetService("Workspace").ChangeCharacter
                Event:FireServer(A_1)
            end
        end    
    })
    Water:AddToggle({
        Name = "No Water | U cant undo..",
        Default = false,
        Callback = function(v)
            getgenv().water = v
            if getgenv().water then
                water:Destroy()
            end
        end    
    })
    Credits:AddToggle({
        Name = "CLICK THIS WHEN DONE",
        Default = false,
        Save = true,
        Flag = "yes"
    })
    --Sliders

    MVM:AddSlider({
        Name = "Walkspeed",
        Min = 5,
        Max = 320,
        Default = 16,
        Color = Color3.fromRGB(255,0,0),
        Increment = 0.5,
        ValueName = "WalkSpeed",
        Callback = function(v)
            if game:GetService("Players").LocalPlayer.Character ~= nil and game:GetService("Players").LocalPlayer.Character.Humanoid ~= nil then
                game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = v
            end
        end    
    })
    MVM:AddSlider({
        Name = "JumpPower",
        Min = 15,
        Max = 1000,
        Default = 50,
        Color = Color3.fromRGB(255,0,0),
        Increment = 0.5,
        ValueName = "JumpPower",
        Callback = function(v)
            if game:GetService("Players").LocalPlayer.Character ~= nil and game:GetService("Players").LocalPlayer.Character.Humanoid ~= nil then
                game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = v
            end
        end    
    })
    MVM:AddSlider({
        Name = "Gravity",
        Min = 0,
        Max = 1000,
        Default = 196.2,
        Color = Color3.fromRGB(255,0,0),
        Increment = 0.1,
        ValueName = "Gravity",
        Callback = function(v)
            game:GetService("Workspace").Gravity = v
        end    
    })
    Chest:AddSlider({
        Name = "Amount Of Chest | I recommend Putting 1",
        Min = 1,
        Max = 10,
        Default = 1,
        Color = Color3.fromRGB(255,0,0),
        Increment = 1,
        ValueName = "Chest",
        Callback = function(v)
            getgenv().ChestAmount = v
        end    
    })

    --Dropdown

    Chest:AddDropdown({
        Name = "Chest Options",
        Default = "Common",
        Options = {"Common Chest", "Uncommon Chest","Rare Chest","Epic Chest","Legendary Chest"},
        Callback = function(v)
            getgenv().WantedChest = v
            print("Set Wanted Chest To :",v)
        end    
    })
    Morph:AddDropdown({
        Name = "Morph",
        Default = nil,
        Options = {"Fox", "Chicken","Penguin"},
        Callback = function(v)
            if v == "Fox" then
                getgenv().Morph = v
            elseif v == "Chicken" then
                getgenv().Morph = v
            elseif v == "Penguin" then
                getgenv().Morph = v
            end
        end    
    })

    --Labels

    OTHERS:AddLabel("^ Button ^, DOES NOT RESET SLIDERS ")
    Chest:AddLabel("To Reiceive All The Reward Without Waiting, Reset")

    --Others skid
    BBAFT:Init()
    print("Helix Hub Executed")
    
elseif getgenv().Universal then
    print("I dind't even start the universal lol")
end
