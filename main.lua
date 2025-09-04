local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Esp by Nekit651", "RJTheme3")

local Tab = Window:NewTab("main")

local Section = Tab:NewSection("main function")

Section:NewButton("Esp", "Esp", function()

  while wait(0.5) do
    for i, child in ipairs(workspace:GetDescendants()) do
        if child:IsA("Model") and child:FindFirstChild("Humanoid") then
            if child ~= game.Players.LocalPlayer.Character then
                if not child:FindFirstChild("EspBox") then
                    local esp = Instance.new("BoxHandleAdornment")
                    esp.Adornee = child
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(4, 5, 4) -- Более подходящий размер
                    esp.Transparency = 0.35
                    esp.Color3 = Color3.fromRGB(255, 48, 48)
                    esp.AlwaysOnTop = true
                    esp.Name = "EspBox"
                    esp.Parent = child
                end
            else

                local existingEsp = child:FindFirstChild("EspBox")
                if existingEsp then
                    existingEsp:Destroy()
                end
            end
        end
        
        if child:IsA("BoxHandleAdornment") and child.Name == "EspBox" and not child.Adornee then
            child:Destroy()
        end
    end
end

end)

Section:NewSlider("Gravity", "Gravity", 500, 0 , function(s)
game.Workspace.Gravity = s
end)

local Tab = Window:NewTab("Speed Hack")

local Section = Tab:NewSection("SpeedHack")

Section:NewSlider("Speed hack", "SpeedHack", 500, 0, function(num)
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = num;
  print("Speed hack actived!")
end)
