
-- atxxx esp v1

local lplr = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = Workspace.CurrentCamera
local worldToViewportPoint = CurrentCamera.worldToViewportPoint

local HeadOff = Vector3.new(0, 0.5, 0)
local LegOff = Vector3.new(0,3,0)

for l,v in pairs(game.Players:GetChildren()) do
    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,255,0)
    BoxOutline.BackgroundTransparency = 1
    BoxOutline.Filled = false
    
    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(255,0,0)
    Box.BackgroundTransparency = 0.5
    Box.Filled = true

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nill and v.Character:FindFirstChild("Humanoid") ~= nill and v.Character:FindFirstChild("HumanoidRootPart") and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                
                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPos, Rootvis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPos = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPos = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)
                
                if onScreen then
                    BoxOutline.Size = Vector3.new(1000 / RootPos.Z, HeadPos.Y - LegPos.Y)
                    BoxOutline.Position = Vector2.new(RootPos.X - BoxOutline.Size.X / 2, RootPos.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true
                    
                    Box.Size = Vector3.new(1000 / RootPos.z, HeadPos.Y - LegPos.Y)
                    Box.Position = Vector2.new(RootPos.x - BoxOutline.Size.X / 2, RootPos.Y - BoxOutline.Size.Y / 2)
                    Box.Visible = true
                    else
                        BoxOutline.Visible = false
                        Box.Visible = false;
                    end
                else
                    BoxOutline.Visible = false
                    Box.Visible = false;
            end
        end)
    end
    coroutine.wrap(boxesp)()
    end
            game.Players.PlayerAdded:Connect(function(v)
                    local BoxOutline = Drawing.new("Square")
    BoxOutline.Visible = false
    BoxOutline.Color = Color3.new(0,255,0)
    BoxOutline.BackgroundTransparency = 1
    BoxOutline.Filled = false
    
    local Box = Drawing.new("Square")
    Box.Visible = false
    Box.Color = Color3.new(255,0,0)
    Box.BackgroundTransparency = 0.5
    Box.Filled = true

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nill and v.Character:FindFirstChild("Humanoid") ~= nill and v.Character:FindFirstChild("HumanoidRootPart") and v ~= lplr and v.Character.Humanoid.Health > 0 then
                local Vector, onScreen = camera:worldToViewportPoint(v.Character.HumanoidRootPart.Position)
                
                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPos, Rootvis = worldToViewportPoint(CurrentCamera, RootPart.Position)
                local HeadPos = worldToViewportPoint(CurrentCamera, Head.Position + HeadOff)
                local LegPos = worldToViewportPoint(CurrentCamera, RootPart.Position - LegOff)
                
                if onScreen then
                    BoxOutline.Size = Vector3.new(1000 / RootPos.Z, HeadPos.Y - LegPos.Y)
                    BoxOutline.Position = Vector2.new(RootPos.X - BoxOutline.Size.X / 2, RootPos.Y - BoxOutline.Size.Y / 2)
                    BoxOutline.Visible = true
                    
                    Box.Size = Vector3.new(1000 / RootPos.z, HeadPos.Y - LegPos.Y)
                    Box.Position = Vector2.new(RootPos.x - BoxOutline.Size.X / 2, RootPos.Y - BoxOutline.Size.Y / 2)
                    Box.Visible = true
                    else
                        BoxOutline.Visible = false
                        Box.Visible = false;
                    end
                else
                    BoxOutline.Visible = false
                    Box.Visible = false;
            end
        end)
    end
    coroutine.wrap(boxesp)()
end)