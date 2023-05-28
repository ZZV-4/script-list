-- Store in AutoExec
-- Made by eyesore (me)
-- Have Display Names and Usernames, Great right? Yeah ik.
-- loadstring(game:HttpGet("https://raw.githubusercontent.com/ZZV-4/script-list/main/Display%20Names.lua", true))()
--//Initialization\\--

for i,lplr in pairs(game:GetService("Players"):GetPlayers()) do
	lplr.Character.Humanoid.DisplayName = lplr.DisplayName.."\n\@"..lplr.Name
	lplr.Character.Humanoid.NameDisplayDistance = math.huge
    lplr.CharacterAdded:Connect(function()
        lplr.Humanoid.Character:WaitForChild("Humanoid").DisplayName = lplr.DisplayName.."\n\@"..lplr.Name
		lplr.Character.Humanoid.NameDisplayDistance = math.huge
    end)
end

game:GetService("Players").PlayerAdded:Connect(function(lplr)
    repeat
		wait()
	until lplr.Character ~= nil
	lplr.Character:WaitForChild("Humanoid").DisplayName = lplr.DisplayName.."\n\@"..lplr.Name
	lplr.Character.Humanoid.NameDisplayDistance = math.huge
    lplr.CharacterAdded:Connect(function()
        lplr.Character:WaitForChild("Humanoid").DisplayName = lplr.DisplayName.."\n\@"..lplr.Name
		lplr.Character.Humanoid.NameDisplayDistance = math.huge
	end)
end)
