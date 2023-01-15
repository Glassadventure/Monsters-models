
if game.ReplicatedStorage.GameData.LatestRoom.Value <= 0 then
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "[Glass's Error Detector]: You must execute this script in room 1 or higher.", Color = Color3.fromRGB( 255,0,0 ), Font = nothingactually, FontSize = Enum.FontSize.Size24 } )
end
---- first message, error detection ----

if game.ReplicatedStorage.GameData.LatestRoom.Value >= 1 then
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "[Glass's Horror Mode]: Script succesfully executed.", Color = Color3.fromRGB( 0,255,0 ), Font = nothingactually, FontSize = Enum.FontSize.Size24 } )
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "SCRIPT VERSION: (v0.1)", Color = Color3.fromRGB( 0,255,0 ), Font = nothingactually, FontSize = Enum.FontSize.Size24 } )
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "Good Luck.", Color = Color3.fromRGB( 255,255,255 ), Font = nothingactually, FontSize = Enum.FontSize.Size24 } )



firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Кажется ты попал в хоррор Мод")

	game.Lighting.Ambient = Color3.new(0, 0, 0)
	game.Lighting.Caves.Enabled = true
	game.Lighting.Bloom.Enabled = true
	game.Lighting.FogEnd = "60"
	game.Lighting.FogStart = "10"


local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua"))()
		local CustomShop = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"))()
		local Candle = game:GetObjects("rbxassetid://11630702537")[1]
		Candle.Parent = game.Players.LocalPlayer.Backpack
		local plr = game.Players.LocalPlayer
		local Char = plr.Character or plr.CharacterAdded:Wait()
		local Hum = Char:FindFirstChild("Humanoid")
		local RightArm = Char:FindFirstChild("RightUpperArm")
		local LeftArm = Char:FindFirstChild("LeftUpperArm")
		local RightC1 = RightArm.RightShoulder.C1
		local LeftC1 = LeftArm.LeftShoulder.C1
		local AnimIdle = Instance.new("Animation")
		AnimIdle.AnimationId = "rbxassetid://9982615727"
		AnimIdle.Name = "IDleloplolo"
		local cam = workspace.CurrentCamera
		Candle.Handle.Top.Flame.GuidingLighteffect.EffectLight.LockedToPart = true
		Candle.Handle.Material = Enum.Material.Salt
		local track = Hum.Animator:LoadAnimation(AnimIdle)
		track.Looped = true
		local Equipped = false
		for i, v in pairs(Candle:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
		Candle.Equipped:Connect(function()
			for _, v in next, Hum:GetPlayingAnimationTracks() do
				v:Stop()
			end
			Equipped = true
        -- RightArm.Name = "R_Arm"
			track:Play()
        -- RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
		end)
		Candle.Unequipped:Connect(function()
			RightArm.Name = "RightUpperArm"
			track:Stop()
			Equipped = false
        -- RightArm.RightShoulder.C1 = RightC1
		end)
		cam.ChildAdded:Connect(function(screech)
			if screech.Name == "Screech" and math.random(1, 400) ~= 1 then
				if not Equipped then
					return
				end
				if Equipped then
					game:GetService("Debris"):AddItem(screech, 0.05)
				end
			end
		end)
		Candle.TextureId = "rbxassetid://11622366799"
    -- Create custom shop item
		if plr.PlayerGui.MainUI.ItemShop.Visible then
			CustomShop.CreateItem(Candle, {
				Title = "Guiding Candle",
				Desc = "×§ĐłŕąŹĎ‚Ń”Ń”ŕą” ŕ¸„Ő‡ ×ĄŕąŹŕ¸˘Đł ŕąŹŕ¸¬ŕ¸  Đłŕą€ŕ¸ŁĐş.",
				Image = "rbxassetid://11622366799",
				Price = 75,
				Stack = 1,
			})
		else
			Candle.Parent = game.Players.LocalPlayer.Backpack
		end

 workspace["The Damned"]:Play()
workspace["The Damned"].SoundId = "rbxassetid://9113731836"
workspace["The Damned"].Pitch = 1
workspace["The Damned"].Looped = true
workspace["The Damned"].Volume = 1
function ambiance()
	while true do
		local ambiencefirst = Instance.new("Sound", workspace)
		ambiencefirst.SoundId = "rbxassetid://12229501"
		ambiencefirst.Pitch = 0.11
		ambiencefirst:Play()
		wait(120)
	end
end       
--
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
game.StarterGui:SetCore( "ChatMakeSystemMessage",  { Text = "Script synced according to room.", Color = Color3.fromRGB( 255,255,255 ), Font = nothingactually, FontSize = Enum.FontSize.Size24 } )

--Tysm for using <3
function MakeDoor(Point)
	local Model = game:GetObjects("rbxassetid://12148758741")[1]
	Model.Parent = Point.Parent
	Model:SetPrimaryPartCFrame(Point.CFrame * CFrame.new(0, 0, .5))
 
	local Prompt = Model.Knob.PromptAtt.DoorOpen

	local function Open()
		Prompt.Enabled = false

    task.spawn(function()
        local knobC1 = Model.Hinge.Knob.C1
 


        --Eye glow
 
        for _,v in pairs(Model.Skull:GetChildren()) do
			if string.match(v.Name,"Eye") then
				game:GetService("TweenService"):Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
				Color = Color3.fromRGB(0, 0, 0),
				}):Play()
			end
		end

        game:GetService("TweenService"):Create(Model.Hinge.Knob, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {C1 = knobC1 * CFrame.Angles(0, 0, math.rad(-35))}):Play()
        task.wait(.15)
        Model.Door.CanCollide = false
		Model.Door.Open:Play()
		Model.Hidden:Destroy()
 
		for _,v in pairs(Model.Skull:GetChildren()) do
			if string.match(v.Name,"Eye") then
				game:GetService("TweenService"):Create(v, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
				Color = Color3.fromRGB(0, 0, 0),
				}):Play()
			end
		end
 
		game:GetService("TweenService"):Create(Model.Hinge.Knob, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {C1 = knobC1}):Play()
 
		game:GetService("TweenService"):Create(Model.Hinge, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {CFrame = Model.Hinge.CFrame * CFrame.Angles(0, math.rad(-90), 0)}):Play()

 firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Видимо ты Нашел комнату Разработчиков")
wait(3)
firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Glass Даёт тебе Ключ скелета он Открывает любые Замки")

loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/CometV4/main/Items/Skeletonkey.lua"))()

wait(3)
 firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Nizier Даёт тебе Крест он Может изгонять монстров")

loadstring(game:HttpGet('https://raw.githubusercontent.com/Johnny39871/assets/main/crucifixo'))()

    end)
 
 
 
	end
 
 
	Prompt.Triggered:Connect(Open)
 
 
end
 
function MakeChest(Chest)
	local Model = Chest.Chest
 
	local Sound = Model.ChestTop.Sound
	local Skull = Chest.Skull
 
	local Prompt = Model.Prompt.ModulePrompt
 
	local Open = false
 
 
 
 
	local function ChestOpenUp()
		if Open then return end
 
		Open = true
 
		Sound.Open:Play()
 
		Prompt.Enabled = false
 
 
		game:GetService("TweenService"):Create(Model.Hinge, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
			CFrame = Model.Hinge.CFrame * CFrame.Angles(0,math.rad(-90),0),
		}):Play()
 
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ZepsyyCodesLUA/Utilities/main/Doors/Crucifix.lua"))()
		local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()
 
	Achievements.Get({
		Title = "crucifix",
		Desc = "you have the power of jesus christ with you...",
		Reason = "You got lucky with the chest!",
		Image = "1111",
	})
	end
 
 
 
 
 
 
	local function Denied()
		--Unlucky LMAOOO
 
			for _,v in pairs(Skull:GetChildren()) do
				if v.Name == "Eye" then
					game:GetService("TweenService"):Create(v, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					Color = Color3.fromRGB(0, 0, 0),
					}):Play()
				end
			end
 
			Sound.Denied:Play()
 
			task.wait(2)
 
			--Fade eyes out
 
			for _,v in pairs(Skull:GetChildren()) do
				if v.Name == "Eye" then
					game:GetService("TweenService"):Create(v, TweenInfo.new(5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					Color = Color3.fromRGB(0, 0, 0),
					}):Play()
				end
			end
 
 
 
	end
 
	local function Accepted()
		for _,v in pairs(Skull:GetChildren()) do
				if v.Name == "Eye" then
					game:GetService("TweenService"):Create(v, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					Color = Color3.fromRGB(0, 0, 0),
					}):Play()
				end
			end
 
			task.wait(1)
 
			Sound.Fall:Play()
			Sound.Unlock:Play()
 
			task.wait(1)
 
			ChestOpenUp()
	end
 
 
	local function DecideFate()
		local Chance = math.random(1,5)
 
		Prompt.Enabled = false
 
		firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "Deciding your fate...")
 
 
		for _,v in pairs(Skull:GetChildren()) do
				if v.Name == "Eye" then
				game:GetService("TweenService"):Create(v, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
				Color = Color3.fromRGB(0, 0, 0),
				}):Play()
			end
		end
 
 
		task.wait(math.random(5,12))	
 
		if Chance == 1 then
			Denied()
		else
			Accepted()
		end
 
 
	end
 
 
 
 
 
 
 
 
	Prompt.Triggered:Connect(DecideFate)
 
end
 
function ReturnLatestRoom()
	return workspace.CurrentRooms:FindFirstChild(game.ReplicatedStorage.GameData.LatestRoom.Value)
end
 
function FixRoomPoint(Point)
	if Point and Point:IsA("BasePart") then
		Point.Size = Vector3.new(5, 8, 0.5)
		Point.Orientation += Vector3.new(0,180,0)
		Point.CFrame *= CFrame.new(0,0,-1)
		Point.Name = "THE SKELETON KEY APPEARS"
 
		return Point
	end
end
 
function GenerateTheSkeletonAppears(Point)
	local Room = game:GetObjects("rbxassetid://12033389560")[1]
	Room.Parent = workspace
	Room.Name = "THE SKELETON APPEARS"
	Room:SetPrimaryPartCFrame(Point.CFrame)
 
	GetNearestPlankedDoor(Point.Parent.Parent,Point)
 
 
	MakeDoor(Point)
 
 
	MakeChest(Room.Animated:WaitForChild("SkullChest",2))
end
 
function GetNearestPlankedDoor(Room,Point)
	for _,v in pairs(Room:GetDescendants()) do
		if v.Name == "FakeDoor_Hotel" then
			local dist = (Point.Position - v.FakeDoor.Position).Magnitude
 
			if dist < 5 then
				for _,z in pairs(v:GetDescendants()) do
					if z:IsA("BasePart") then
						z.Transparency = 1
						z.CanCollide = false
					end
				end
			end
 
		end
	end
 
end
 
 
function CheckRoom(Room)
	if Room:FindFirstChild("RandomDoor") then
		local Doors = Room:FindFirstChild("RandomDoor"):GetChildren()
 
		if #Doors > 1 then
			local ChosenPoint = Doors[math.random(1,#Doors)]
 
			local NewPoint = FixRoomPoint(ChosenPoint)
			GenerateTheSkeletonAppears(NewPoint)
		else
 
			local NewPoint = FixRoomPoint(Doors[1])
			GenerateTheSkeletonAppears(NewPoint)
		end
 
	end
end
 
game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
	task.wait(.1)
	CheckRoom(ReturnLatestRoom())
end)

coroutine.wrap(function()
while true do
wait(150)

local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

local entity = Creator.createEntity({
    CustomName = "Смайлер", -- Custom name of your entity
    Model = "rbxassetid://12149873447", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 3, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 50,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        2, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 6,
        WaitTime = 1.5,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {10, 10, 0.1, 1}, -- Shake values (don't change if you don't know)
        50, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://12148421017", -- Image1 url
            Image2 = "rbxassetid://12148421017", -- Image2 url
            Shake = true,
            Sound1 = {
                5263560566, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                5263560566, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 0, 0), -- Color
            },
            Tease = {
                false, -- Enabled/Disabled
                Min = 1,
                Max = 1,
            },
        },
    },
    CustomDialog = {"Ты умер от...", "Стоп ты Умер от Смайлера?", "Как? его же не Добавили В игру"}, -- Custom death message
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)

local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

-- Creates and displays your custom achievement
Achievements.Get({
    Title = "Хватит Повторять",
    Desc = "Секретная сущность",
    Reason = "Встретьте и не выживите при встрече с редкой сущностью Смайлер",
    Image = "https://tr.rbxcdn.com/0a2b4b06d23fb239f9487f203f0e29ec/420/420/Decal/Png",
})


    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

--[[
    NOTE: Keep in mind that these are "fake" achievements and will NOT give you an in-game badge.
]]--

local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

-- Creates and displays your custom achievement
Achievements.Get({
   Title = "Повторения...",
    Desc = "Секретная сущность",
    Reason = "Встретьте и виживите При встрече с редкой сущностью Смайлер",
    Image = "https://tr.rbxcdn.com/5b4ffd649ecf67736653945426433c8e/420/420/Decal/Png",
})
wait(20)
end
end)()
end

coroutine.wrap(function()
while true do
wait(300)

local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

local entity = Creator.createEntity({
    CustomName = "A-60", -- Custom name of your entity
    Model = "rbxassetid://12151744169", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 3, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 30,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        3, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 4,
        WaitTime = 1.5,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {30, 30, 0.1, 1}, -- Shake values (don't change if you don't know)
        50, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://11710144244", -- Image1 url
            Image2 = "rbxassetid://11710144244", -- Image2 url
            Shake = true,
            Sound1 = {
                5263560566, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                5263560566, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 0, 0), -- Color
            },
            Tease = {
                false, -- Enabled/Disabled
                Min = 1,
                Max = 1,
            },
        },
    },
    CustomDialog = {"Ты умер от A-60", "Он светится Ярко-красным цветом и издает Характерный звук", "Это очень редкая Сущность"}
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

--[[
    NOTE: Keep in mind that these are "fake" achievements and will NOT give you an in-game badge.
]]--

local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

-- Creates and displays your custom achievement
Achievements.Get({
    Title = "Много повторений",
    Desc = "Может вернутся А может и нет",
    Reason = "Встретьте и виживите При встрече с редкой сущностью A-60",
    Image = "https://tr.rbxcdn.com/72641a21a5142c8ce11476f6d62a1d04/420/420/Decal/Png",
})
wait(15)
end
end)()

coroutine.wrap(function()
while true do
wait(525)

local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

local entity = Creator.createEntity({
    CustomName = "Войд", -- Custom name of your entity
    Model = "rbxassetid://12131332883", -- Can be GitHub file or rbxassetid
    Speed = 400, -- Percentage, 100 = default Rush speed
    DelayTime = 9, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    KillRange = 30,
    BreakLights = true,
    BackwardsMovement = false,
    FlickerLights = {
        true, -- Enabled/Disabled
        8, -- Time (seconds)
    },
    Cycles = {
        Min = 3,
        Max = 4,
        WaitTime = 1.5,
    },
    CamShake = {
        true, -- Enabled/Disabled
        {30, 30, 0.1, 1}, -- Shake values (don't change if you don't know)
        50, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        true, -- Enabled/Disabled
        {
            Image1 = "rbxassetid://12123364499", -- Image1 url
            Image2 = "rbxassetid://12123364499", -- Image2 url
            Shake = true,
            Sound1 = {
                5263560566, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                5263560566, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled/Disabled
                Color3.fromRGB(255, 0, 0), -- Color
            },
            Tease = {
                false, -- Enabled/Disabled
                Min = 1,
                Max = 1,
            },
        },
    },
    CustomDialog = {"Ты умер от Войда", "Он не светится но издает Громкий звук", "Он выглядит Как Пустота..."}
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end
------------------------

-- Run the created entity
Creator.runEntity(entity)

--[[
    NOTE: Keep in mind that these are "fake" achievements and will NOT give you an in-game badge.
]]--

local Achievements = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()

-- Creates and displays your custom achievement
Achievements.Get({
    Title = "Пустота...",
    Desc = "Пустой как снаружи Так и внутри",
    Reason = "Встретьте и виживите При встрече с редкой сущностью Войд",
    Image = "https://media.discordapp.net/attachments/1058916948676722820/1058916949024845874/1672394309138.png?width=940&height=625",
})
wait(15)
end
end)()