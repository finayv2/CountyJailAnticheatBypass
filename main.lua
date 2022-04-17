local oldnamecall; oldnamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    
    if self.Name == "Exploits" then
        if args[1] ~= "Check"  then
            return wait(9e9)
        end
    end
    if self.Name == "ErrorLogs" then return wait(9e9) end
    if getnamecallmethod() == "Kick" then return wait(9e9) end
    return oldnamecall(self, unpack(args))
end)

local Char = game.Players.LocalPlayer.Character
local OldParent = Char.Parent
local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
local OldPos = HRP.CFrame
Char.Parent = game
local HRP1 = HRP:Clone()
HRP1.Parent = Char
HRP = HRP:Destroy()
HRP1.CFrame = OldPos
Char.Parent = OldParent
