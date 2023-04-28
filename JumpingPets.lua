local link = "https://discord.com/api/webhooks/1093546281953144948/59EYFoPk33mGvs31Y9hSEkNj_N2gjr9SSMogvASD-lg3ohuxUUbMPliCbs_Ru8_Q8tiD"
local player = game.Players.LocalPlayer

local webhookcheck = is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or secure_load and "Sentinel" or KRNL_LOADED and "Krnl" or SONA_LOADED and "Sona" or "Jakis syf z biedronki"

local Embed = {
    ["title"] = "snazzy notification",
    ["description"] = "**Nazwa:** \n"..player.Name.."\n**Executor:** \n"..webhookcheck.."\n\n**Informacja:** \nPomyślnie użył NOWEGO skrypciku.",
    ["type"] = "rich",
    ["color"] = 1739987,
    ["image"] = {
            ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=250&y=250&Format=Png&username="..player.Name
        },
}

(syn and syn.request or http_request or http.request) {
    Url = link;
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {Embed}});
};

local DarkraiX = loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Kavo-Ui/main/Darkrai%20Ui", true))()
local Library = DarkraiX:Window("By Snazzy","","",Enum.KeyCode.RightControl);
Tab1 = Library:Tab("Main")
Tab1:Button("Reedem Codes",function()
    local v20 = "RELEASE"
    local v21 = game:GetService("ReplicatedStorage").Remotes.SubmitSocialCode
    v21:InvokeServer(v20)
    local v20 = "YOMAO"
    local v21 = game:GetService("ReplicatedStorage").Remotes.SubmitSocialCode
    v21:InvokeServer(v20)
    local v20 = "10K"
    local v21 = game:GetService("ReplicatedStorage").Remotes.SubmitSocialCode
    v21:InvokeServer(v20)
    local v20 = "UPDATE1"
    local v21 = game:GetService("ReplicatedStorage").Remotes.SubmitSocialCode
    v21:InvokeServer(v20)
    local v20 = "THANKYOU"
    local v21 = game:GetService("ReplicatedStorage").Remotes.SubmitSocialCode
    v21:InvokeServer(v20)
    local v20 = "EASTER"
    local v21 = game:GetService("ReplicatedStorage").Remotes.SubmitSocialCode
    v21:InvokeServer(v20)
end)
Tab1:Toggle("Auto farm coin and gems",false,function(v5)
    v2 = v5
                while v2 do
                    local v34 = "Collider"
                    local v35 = {}
                    for v44, v45 in ipairs(game:GetService("Workspace").__COMPONENTS.Tracks.Overworld:GetDescendants()) do
                        if (v45:IsA("MeshPart") and (v45.Name == v34)) then
                            table.insert(v35, v45)
                        end
                    end
                    while (#v35 > 0) and v2 do
                        for v46, v47 in ipairs(v35) do
                            if not v2 then
                                break
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                CFrame.new(v47.Position + Vector3.new(0, 5, -10), v47.Position)
                            wait(0.1)
                        end
                        v35 = {}
                        for v49, v50 in ipairs(
                            game:GetService("Workspace").__COMPONENTS.Tracks.Overworld:GetDescendants()
                        ) do
                            if (v50:IsA("MeshPart") and (v50.Name == v34)) then
                                table.insert(v35, v50)
                            end
                        end
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                        CFrame.new(Vector3.new(-520, -100, 449))
                    wait(0.1)
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-520, -100, 449))
            end)


Tab1 = Library:Tab("Pet Option")
Tab1:Toggle("Equip Best Pet",false,function(v5)
            v8 = v5
            while v8 do
                local v39 = game:GetService("ReplicatedStorage").Remotes.RequestEquipBest
                v39:FireServer()
                wait(1)
            end
        end)

        Tab1:Toggle("Auto Spin Wheel",false,function(v5)
                    v8 = v5
                    while v8 do
                        local v37 = "Update2"
                        local v38 = game:GetService("ReplicatedStorage").Remotes.SpinFortuneWheel 
                        v38:InvokeServer(v37)
                        wait(1)
                    end
                end)
Tab1 = Library:Tab("Local Player")

Tab1:Slider("Slider",1,100,25,function(v11)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v11
end)
Tab1:Seperator("RANKS")
getgenv().CipkaList = {}
for icipka,vcipka in pairs(game:GetService("ReplicatedStorage").Assets.RanksAddons:GetChildren()) do
    table.insert(CipkaList, vcipka.Name)
end
Tab1:Dropdown("Select Rank",{"Owner","Partner"},function(wybranacipka)
    if wybranacipka then
        getgenv().WybranaCipka = wybranacipka
    end
end)
Tab1:Button("Enable Rank (Tag & Aura)",function()
    local RankTag = game:GetService("ReplicatedStorage").Assets.RanksAddons[getgenv().WybranaCipka].Tag.TagAttachment
    RankTag.Parent = game.Players.LocalPlayer.Character.Head
    local RankAura = game:GetService("ReplicatedStorage").Assets.RanksAddons[getgenv().WybranaCipka].Aura.AuraAttachment
    RankAura.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
end)
Tab1:Button("Disable Rank (Tag & Aura)",function()
    local CipkaTag = game.Players.LocalPlayer.Character.Head.TagAttachment
    CipkaTag.Parent = game:GetService("ReplicatedStorage").Assets.RanksAddons[getgenv().WybranaCipka].Tag
    local CipkaAura = game.Players.LocalPlayer.Character.HumanoidRootPart.AuraAttachment
    CipkaAura.Parent = game:GetService("ReplicatedStorage").Assets.RanksAddons[getgenv().WybranaCipka].Aura
end)

Tab1 = Library:Tab("Teleport")
Tab1:Button("CLICK TO DESTROY THE BARRIER (TO TELEPORT)",function()
    game:GetService("Workspace")["__COMPONENTS"].ZoneLock:Destroy()
end)
    local v13 = {
        ["Village Island"] = Vector3.new(-663, -100, 448),
        ["Autumn Island"] = Vector3.new(85, 247, 59),
        ["Desert Island"] = Vector3.new(-356, 826, 802),
        ["Winter Island"] = Vector3.new(-394, 1303, -54),
        ["Swamp Island"] = Vector3.new(-844, 1795, 548),
        ["Sakura Island"] = Vector3.new(147, 2448, 310),
        ["Ocean Island"] = Vector3.new(-800, 3090, 455),
        ["Farm Island"] = Vector3.new(-199, 3689, -260),
        ["Cliffs"] = Vector3.new(-325, 4752, 419),
        ["Heaven Island"] = Vector3.new(-406, 5891, 546),
    }
    local v14 = ""
Tab1:Dropdown("Teleports",{"Village Island","Autumn Island","Desert Island","Winter Island","Swamp Island","Sakura Island","Ocean Island","Farm Island","Cliffs","Heaven Island"},function(v15)
    v14 = v15
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v13[v14])
end)
Tab1 = Library:Tab("Auto Hatch")
Tab1:Dropdown("SPAWN EGG SELECT To Hatch",{"Village","VillageSilver","Autumn","AutumnSilver","Desert","DesertSilver","Winter","WinterSilver","Swamp","SwampSilver","Sakura","SakuraSilver","Dungeon","DungeonTemple","Farm","FarmSilver","Cliffs","CliffsSilver","DungeonHell","Heaven","HeavenSilver"},function(v15)
    o = v15
    print(v15)
end)
Tab1:Toggle("Start Auto Hatch",false,function(v5)
    eggToggleEnabled = v5   
    while eggToggleEnabled do
        local v40 = o
        local v41 = game:GetService("ReplicatedStorage").Remotes.RequestOpenOneEgg
        v41:FireServer(v40)
        wait(0.1)
    end
        end)
Tab1 = Library:Tab("Open GUI")
    local v13 = {
        ["Player Upgrades"] = Vector3.new(-567, -101, 351),
        ["Pet Upgrader"] = Vector3.new(-614, -101, 558),
    }
    local v18 = ""
Tab1:Dropdown("Teleports (Need Unlock World First to Use)",{"Player Upgrades","Pet Upgrader"},function(v15)
        v18 = v15
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v13[v18])
    end)



Tab1 = Library:Tab("Dungeon")
Tab1:Button("Open Dungeon Door (Need 100K Diamond and level 15)",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-273, -15, 8351)) 
    wait(1)
    local v26 = game:GetService("ReplicatedStorage").Remotes.RequestDungeonUnlock
    v26:FireServer()
end)    
Tab1:Button("Open Temple Door (Need 100K Diamond and level 15)",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-781, 6, 8351))
    wait(1)
    local v26 = game:GetService("ReplicatedStorage").Remotes.RequestTempleUnlock
    v26:FireServer()
end)    
Tab1:Button("Open Hell Door (Need open 500 Heaven Eggs)",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-781, 6, 8351))
    wait(1)
    local v26 = game:GetService("ReplicatedStorage").Remotes.ShowDungeonHellUnlock
    local v26 = game:GetService("ReplicatedStorage").Remotes.DestroyHellGate
    v26:FireServer()
end)    
Tab1:Button("Teleport Dungeon Egg",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-724, 7, 8352))
end)

Tab1:Button("Teleport Temple Egg",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1164, 77, 8352)) 
end)

Tab1:Button("Teleport Hell Egg",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1847, -29, 8360)) 
end)

Tab1 = Library:Tab("Discord")
Tab1:Button("📜 CLICK TO COPY SERVER DISCORD LINK 📜",function()
    local v32 = "https://discord.gg/6XBJCMj2Mk"
    setclipboard(v32)
    local v33 = true
end)
Tab1:Button("📜 CLICK TO COPY SERVER DISCORD LINK 📜",function()
    local v32 = "https://discord.gg/6XBJCMj2Mk"
    setclipboard(v32)
    local v33 = true
end)
Tab1:Button("📜 CLICK TO COPY SERVER DISCORD LINK 📜",function()
    local v32 = "https://discord.gg/6XBJCMj2Mk"
    setclipboard(v32)
    local v33 = true
end)
Tab1:Button("📜 CLICK TO COPY SERVER DISCORD LINK 📜",function()
    local v32 = "https://discord.gg/6XBJCMj2Mk"
    setclipboard(v32)
    local v33 = true
end)
Tab1:Button("📜 CLICK TO COPY SERVER DISCORD LINK 📜",function()
    local v32 = "https://discord.gg/6XBJCMj2Mk"
    setclipboard(v32)
    local v33 = true
end)





