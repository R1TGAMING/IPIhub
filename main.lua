local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "IPIhub 0.1A",
    SubTitle = "script by IPI, powered by fluent",
    TabWidth = 160,
    Size = UDim2.fromOffset(380, 250),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
    
}

local Options = Fluent.Options

--Settings Tabs

Tabs.Settings:AddParagraph({
        Title = "Welcome To IPIhub!!!",
        Content = "Don't Forget To Support Me!!"
    })

--Main Tabs

--AutoTap
local Toggle = Tabs.Main:AddToggle("AutoTap", {Title = "Auto Tap", Default = false })

    Toggle:OnChanged(function()
    while Options.AutoTap.Value == true do
        args = {[1] = 1}
        game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(unpack(args))
        end
    end)

    Options.AutoTap:SetValue(false)
    

    
