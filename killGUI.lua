for i,v in next, game.Players.LocalPlayer.PlayerGui:GetChildren() do
if v:IsA'ScreenGui' then
v:Destroy()
end
end
