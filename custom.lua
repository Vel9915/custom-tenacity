local Connection
lua_library:CreateWindow('TenaCustom', 'http://www.roblox.com/asset/?id=6441978333', UDim2.new(0.950, 0, 0.272, 0))
lua_library:CreateButton('blue pack', 'TenaCustom', 'blue_pack',function()
    if library.Constants.blue_pack then
        local cam = workspace.CurrentCamera
        Connection = cam.Viewmodel.ChildAdded:Connect(function(v)
            if v:FindFirstChild("Handle") then
                pcall(function()
                    v:FindFirstChild("Handle").Size = v:FindFirstChild("Handle").Size / 1.5
                    v:FindFirstChild("Handle").Material = Enum.Material.Neon
                    v:FindFirstChild("Handle").TextureID = ""
                    v:FindFirstChild("Handle").Color = Color3.fromRGB(0, 0, 255)
                end)
                local vname = string.lower(v.Name)
                if vname:find("sword") or vname:find("blade") then
                    v:FindFirstChild("Handle").MeshId = "rbxassetid://12996309727"
                end
            end
        end)
    else
        if Connection then Connection:Disconnect() end
    end
end)
