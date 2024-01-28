_G.IPIhubVersion = "v0.5A"


local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()



--Configuration
local Window = Fluent:CreateWindow({
    Title = "IPIhub 0.5A",
    SubTitle = "script by IPI, powered by fluent",
    TabWidth = 160,
    Size = UDim2.fromOffset(380, 250),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Variables

local Remote = game:GetService("ReplicatedStorage").Aero.AeroRemoteServices;
local Options = Fluent.Options


--Tabs
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
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
           wait()
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
           wait()
        end
    end)

    Options.AutoSuperRebirth:SetValue(false)


   
--BuyEgg
--[[ local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
        Title = "Dropdown",
        Values = {"one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen"},
        Multi = false,
        Default = 1,
    })

    Dropdown:SetValue("four")

    Dropdown:OnChanged(function(Value)
        print("Dropdown changed:", Value)
    end)
]]--
