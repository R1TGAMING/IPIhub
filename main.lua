_G.IPIhubVersion = "v1.2.6"


local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()



--Configuration
local Window = Fluent:CreateWindow({
    Title = "IPIhub",
    SubTitle = "v0.8.2 UI Lib By Fluent",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 250),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.K -- Used when theres no MinimizeKeybind
})

--Variables

local Remote = game:GetService("ReplicatedStorage").Aero.AeroRemoteServices;
local Options = Fluent.Options
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

--Properties
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Frame.BackgroundTransparency = 0.500
Frame.Position = UDim2.new(0.858712733, 0, 0.0237762257, 0)
Frame.Size = UDim2.new(0.129513338, 0, 0.227972031, 0)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "IPIhub"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 50.000
TextButton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextStrokeTransparency = 0.000
TextButton.TextWrapped = true
TextButton.MouseButton1Down:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, "K" , false , game)
end)

UITextSizeConstraint.Parent = TextButton
UITextSizeConstraint.MaxTextSize = 30



--Tabs
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "" }),
    About = Window:AddTab({ Title = "About", Icon = "" })
    
}


--About Tabs

Tabs.About:AddParagraph({
        Title = "Welcome To IPIhub!!!",
        Content = "Don't Forget To Support IPI!!"
    })


--Main Tabs

--AutoTap
local Toggle = Tabs.Main:AddToggle("AutoTap", {Title = "Auto Tap", Default = false })

    Toggle:OnChanged(function()
    while Options.AutoTap.Value == true do
        args = {[1] = 1}
        Remote.ClickService.Click:FireServer(unpack(args))
        wait()
        end
    end)

    Options.AutoTap:SetValue(false)
 
 
--AutoRebith
local Toggle = Tabs.Main:AddToggle("AutoRebirth", {Title = "Auto Rebirth", Default = false })

    Toggle:OnChanged(function()
        while Options.AutoRebirth.Value == true do 
           args = {[1] = 1000}
           Remote.RebirthService.BuyRebirths:FireServer(unpack(args))
           wait(1)
        end
    end)

    Options.AutoRebirth:SetValue(false)
 
 
--BuyRebirth
Tabs.Main:AddButton({
        Title = "Buy Rebirth",
        Description = "",
        Callback = function()
          args = {[1] = 1000}
          Remote.RebirthService.BuyRebirths:FireServer(unpack(args))
          wait()
      end
  })
  
  
--AutoSuperRebith
local Toggle = Tabs.Main:AddToggle("AutoSuperRebirth", {Title = "Auto Super Rebirth", Default = false })

    Toggle:OnChanged(function()
        while Options.AutoSuperRebirth.Value == true do 
           args = {[1] = 1000}
           Remote.RebirthService.BuySuperRebirths:FireServer(unpack(args))
           wait(1)
        end
    end)

    Options.AutoSuperRebirth:SetValue(false)

--BuySuperRebirth
Tabs.Main:AddButton({
        Title = "Buy Super Rebirth",
        Description = "",
        Callback = function()
          args = {[1] = 1000}
          Remote.RebirthService.BuySuperRebirths:FireServer(unpack(args))
          wait()
      end
  })
  
   
--BuyEgg
local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
        Title = "Buy Eggs",
        Values = {"None", "Basic", "Lava", "Desert", "Ocean", "Winter", "Toxic", "Candy", "Forest", "Storm", "Blocky", "Space", "Dominus", "Infinity", "Future", "City", "Moon", "Fire"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("None")

    Dropdown:OnChanged(function(Value)
        if Value == "None" then
           print("None Clicked")
           
        elseif Value == "Basic" then
           Remote.EggService.Purchase:FireServer("basic")
           wait()
        
        
        elseif Value == "Lava" then
           Remote.EggService.Purchase:FireServer("lava")
           wait()
        
        
        elseif Value == "Desert" then
           Remote.EggService.Purchase:FireServer("desert")
           wait()
        
        
        elseif Value == "Ocean" then
           Remote.EggService.Purchase:FireServer("ocean")
           wait()
        
        
        elseif Value == "Winter" then
           Remote.EggService.Purchase:FireServer("winter")
           wait()
        
        
        elseif Value == "Toxic" then
           Remote.EggService.Purchase:FireServer("toxic")
           wait()
        
        
        elseif Value == "Candy" then
           Remote.EggService.Purchase:FireServer("candy")
           wait()
        
        
        elseif Value == "Forest" then
           Remote.EggService.Purchase:FireServer("forest")
           wait()
        
        
        elseif Value == "Storm" then
           Remote.EggService.Purchase:FireServer("storm")
           wait()
        
        
        elseif Value == "Blocky" then
           Remote.EggService.Purchase:FireServer("blocky")
           wait()
        
        
        elseif Value == "Space" then
           Remote.EggService.Purchase:FireServer("space")
           wait()
        
        
        elseif Value == "Dominus" then
           Remote.EggService.Purchase:FireServer("dominus")
           wait()
        
        
        elseif Value == "Infinity" then
           Remote.EggService.Purchase:FireServer("infinity")
           wait()
        
        
        elseif Value == "Future" then
           Remote.EggService.Purchase:FireServer("future")
           wait()
        
        elseif Value == "City" then
           Remote.EggService.Purchase:FireServer("city")
           wait()
         
         elseif Value == "Moon" then
           Remote.EggService.Purchase:FireServer("moon")
           wait()
           
         elseif Value == "Fire" then
           Remote.EggService.Purchase:FireServer("fire")
           wait()
           
        else
        Fluent:Notify({
        Title = "Error",
        Content = "Pls Try Again Or Contact Developer!!",
        SubContent = "", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })
        end
    end)

--Auto Buy Eggs
--[[local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
        Title = "Auto Buy Eggs",
        Values = {"None", "Basic", "Lava", "Desert", "Ocean", "Winter", "Toxic", "Candy", "Forest", "Storm", "Blocky", "Space", "Dominus", "Infinity", "Future", "City", "Moon", "Fire"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("None")

    Dropdown:OnChanged(function(Value)
        if Value == "None" then
           print("None Clicked")
           
        elseif Value == "Basic" then
        while Value == "Basic" do
           Remote.EggService.Purchase:FireServer("basic")
           wait()
        end
        
        elseif Value == "Lava" then
        while Value == "Lava" do
           Remote.EggService.Purchase:FireServer("lava")
           wait()
        end
        
        elseif Value == "Desert" then
        while Value == "Desert" do
           Remote.EggService.Purchase:FireServer("desert")
           wait()
        end
        
        elseif Value == "Ocean" then
        while Value == "Ocean" do
           Remote.EggService.Purchase:FireServer("ocean")
           wait()
        end
        
        elseif Value == "Winter" then
        while Value == "Winter" do
           Remote.EggService.Purchase:FireServer("winter")
           wait()
        end
        
        elseif Value == "Toxic" then
        while Value == "Toxic" do
           Remote.EggService.Purchase:FireServer("toxic")
           wait()
        end
        
        elseif Value == "Candy" then
        while Value == "Candy" do
           Remote.EggService.Purchase:FireServer("candy")
           wait()
           end
        
        
        elseif Value == "Forest" then
        while Value == "Forest" do
           Remote.EggService.Purchase:FireServer("forest")
           wait()
        end
        
        elseif Value == "Storm" then
        while Value == "Storm" do
           Remote.EggService.Purchase:FireServer("storm")
           wait()
           end
        
        
        elseif Value == "Blocky" then
        while Value == "Blocky" do
           Remote.EggService.Purchase:FireServer("blocky")
           wait()
        end
        
        
        elseif Value == "Space" then
        while Value == "Space" do
           Remote.EggService.Purchase:FireServer("space")
           wait()
        end
        
        elseif Value == "Dominus" then
        while Value == "Dominus" do
           Remote.EggService.Purchase:FireServer("dominus")
           wait()
        end
        
        elseif Value == "Infinity" then
        while Value == "Infinity" do
           Remote.EggService.Purchase:FireServer("infinity")
           wait()
        end
        
        elseif Value == "Future" then
        while Value == "Future" do
           Remote.EggService.Purchase:FireServer("future")
           wait()
        end
        
        elseif Value == "City" then
        while Value == "City" do
           Remote.EggService.Purchase:FireServer("city")
           wait()
           end
         
         elseif Value == "Moon" then
         while Value == "Moon" do
           Remote.EggService.Purchase:FireServer("moon")
           wait()
           end
           
         elseif Value == "Fire" then
         while Value == "Fire" do
           Remote.EggService.Purchase:FireServer("fire")
           wait()
           end
           
        else
        Fluent:Notify({
        Title = "Error",
        Content = "Pls Try Again Or Contact Developer!!",
        SubContent = "", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })
        end
    end)
 ]]--   



--Misc Tabs

--Walk Speed
local Slider = Tabs.Misc:AddSlider("Slider", {
        Title = "Walk Speed",
        Description = "",
        Default = 50,
        Min = 0,
        Max = 200,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    })

    Slider:OnChanged(function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end)

    

--Jump Height
--[[local Slider1 = Tabs.Misc:AddSlider("Slider1", {
        Title = "Jump Height",
        Description = "",
        Default = 50,
        Min = 0,
        Max = 200,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end
    })

    Slider1:OnChanged(function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end)
--]]
    
