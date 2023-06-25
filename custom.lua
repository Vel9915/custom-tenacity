lua_library:CreateButton('ACDISABLER', 'Combat', 'ac_disabler',function()
    if lua_library.Constants.ac_disabler then
        repeat task.wait()
            if cedoscript['functions']:getAliveStateOf(game.Players.LocalPlayer) then
                local args = {
                    [1] = {
                        ["partPositions"] = {
                            [1] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame),
                            [2] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame),
                            [3] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame),
                            [4] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame),
                            [5] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame),
                            [6] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame),
                            [7] = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
                        },
                        ["partSize"] = Vector3.new(999999, 0.5, 9999.99999999999999999999)
                    }
                }

                game:GetService("ReplicatedStorage"):WaitForChild("rbxts_include"):WaitForChild("node_modules"):WaitForChild("@rbxts"):WaitForChild("net"):WaitForChild("out"):WaitForChild("_NetManaged"):WaitForChild("SpiritBridgeEnter"):InvokeServer(unpack(args))
            end
        until false
    end
end)
