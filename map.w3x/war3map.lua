
function InitGlobals()
end

function CreateUnitsForPlayer0()
    local p = Player(0)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("Hjai"), -3.5, 55.5, 272.159, FourCC("Hjai"))
    u = BlzCreateUnitWithSkin(p, FourCC("Hart"), -225.0, -149.3, 351.734, FourCC("Hart"))
    u = BlzCreateUnitWithSkin(p, FourCC("opeo"), 165.5, -119.7, 175.617, FourCC("opeo"))
end

function CreatePlayerBuildings()
end

function CreatePlayerUnits()
    CreateUnitsForPlayer0()
end

function CreateAllUnits()
    CreatePlayerBuildings()
    CreatePlayerUnits()
end


function InitCustomPlayerSlots()
    SetPlayerStartLocation(Player(0), 0)
    SetPlayerColor(Player(0), ConvertPlayerColor(0))
    SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(0), true)
    SetPlayerController(Player(0), MAP_CONTROL_USER)
end

function InitCustomTeams()
    SetPlayerTeam(Player(0), 0)
end

function main()
    SetCameraBounds(-1280.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -1536.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 1280.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 1024.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -1280.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 1024.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 1280.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -1536.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    NewSoundEnvironment("Default")
    SetAmbientDaySound("LordaeronSummerDay")
    SetAmbientNightSound("LordaeronSummerNight")
    SetMapMusic("Music", true, 0)
    CreateAllUnits()
    InitBlizzard()
    InitGlobals()
end

function config()
    SetMapName("TRIGSTR_001")
    SetMapDescription("TRIGSTR_003")
    SetPlayers(1)
    SetTeams(1)
    SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)
    DefineStartLocation(0, 0.0, 448.0)
    InitCustomPlayerSlots()
    SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    InitGenericPlayerSlots()
end






















































































--CUSTOM_CODE
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 05.10.2021 23:42
---
BoPeeBo = { 0, 1,
            4, 5,
            8, 9, 10,
            12, 13, 14,
            16, 17, 17.5, 18,
            20, 21, 21.5, 22,
            24,24.5,25,25.5,26,
            28,28.5,29,29.5,30,
            32,32.5,33,
            36,36.5,37,
            40,40.5,41,
            44,44.5,45,
            48,48.5,49,
            52,52.5,53,55.5,
            56,56.5,57.5,58,59.5,
            60,60.5,61.5,62, --был лишний тут 62.5
            64,65,66,
            68,69,70,
            72,73,74,74.25,74.5,75,
            76,77,78,78.25,78.5,79,
            80,81,82,
            84,85,86,
            88,
            92,
            96,96.5,97,
            100,100.5,101,103.5,
            104,104.5,105.5,106,107.5,
            108,108.5,109.5,110,
            112,112.5,113,113.5,114,
            116,116.5,117,117.5,118,119.5,
            120,120.5,121.5,122,123.5,
            124,124.5,125.5,126,
}
ArroPos = { 4, 3,
            10, 9,
            4, 3, 2,
            10, 9, 8,
            2, 3, 4, 1,
            8, 9, 10, 7,
            4,3,3,1,2,
            10,9,9,7,8,
            3,2,1,
            9,8,7,
            1,4,3,
            7,10,9,
            1,2,3,
            8,9,10,1,
            2,2,4,3,7,
            8,8,10,9,
            3,2,1,
            9,8,7,
            2,2,2,2,2,2,
            8,8,8,8,8,8,
            4,2,1,
            10,8,7,
            4,
            10,
            3,2,1,
            9,8,7,1,
            2,2,4,3,7,
            8,8,10,9,
            3,2,1,4,2,
            9,8,7,10,8,1,
            2,2,4,3,7,
            8,8,10,9,
            
}

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 06.10.2021 0:00
---
function ReturnFPS()
    local fps = BlzGetFrameByName("ResourceBarFrame", 0)
    BlzFrameSetVisible(fps, true)
    BlzFrameClearAllPoints(fps)
    BlzFrameSetAbsPoint(fps, FRAMEPOINT_CENTER, 0.95, 0.62)
end

function HideEverything()
    --BlzFrameSetVisible(BlzGetFrameByName("ConsoleUIBackdrop", 0), false)
    BlzFrameSetAbsPoint(BlzGetFrameByName("ConsoleUIBackdrop", 0), FRAMEPOINT_TOPRIGHT, 0, -0, 8)
    --BlzFrameSetSize(BlzGetFrameByName("CommandButton_" .. 0, 0), 0, 0)-- M в позиции 0,0
    for i = 0, 11 do
        BlzFrameSetVisible(BlzGetFrameByName("CommandButton_" .. i, 0), false) --отключить
        --BlzFrameSetSize(BlzGetFrameByName("CommandButton_" .. i, 0), 0, 0)--скрыть, но работать будут по хоткеям
    end
    BlzHideOriginFrames(true)--скрыть всё
    BlzFrameSetScale(BlzFrameGetChild(BlzGetFrameByName("ConsoleUI", 0), 5), 0.001) --рамка мёртвой зоны отключение
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 05.10.2021 18:44
---
do
    local InitGlobalsOrigin = InitGlobals
    function InitGlobals()
        InitGlobalsOrigin()
        TimerStart(CreateTimer(), .5, false, function()
            Preload("Inst")
            Preload("Voices")
            Preloader("Inst")
            Preloader("Voices")
            ReturnFPS()
            HideEverything()

        end)
        TimerStart(CreateTimer(), 2.5, false, function()
            StarAllSound()

            DestroyTimer(GetExpiredTimer())
        end)
    end
end

TIMER_PERIOD = 1 / 32
TIMER_PERIOD64 = 1 / 64
function StarAllSound()
    local x, y = GetPlayerStartLocationX(Player(0)), GetPlayerStartLocationY(Player(0))
    --normal_sound("All", x, y)
    normal_sound("321GO", x, y)
    TimerStart(CreateTimer(), 0.011, false, function()
        --normal_sound("Voices", x, y)
        -- print("голос")
    end)

    TimerStart(CreateTimer(), 0.01, false, function()
        --normal_sound("Inst", x, y)
        -- print("фон")
    end)
    StartArrow()
end

arrows = {
    static = {
        [1] = "Arrows/left.dds",
        [2] = "Arrows/down.dds",
        [3] = "Arrows/up.dds",
        [4] = "Arrows/right.dds"
    },
    lighted = {
        [1] = "Arrows/5.dds",
        [2] = "Arrows/1.dds",
        [3] = "Arrows/3.dds",
        [4] = "Arrows/8.dds"
    },
    standart = {
        [1] = "Arrows/7.dds",
        [2] = "Arrows/2.dds",
        [3] = "Arrows/4.dds",
        [4] = "Arrows/6.dds"
    },
    up = {},
    list = {},
    x = 0.08,
    y = 0.55

}

function StartArrow()
    for i = 1,10 do
        if i < 5 or i > 6 then
            pos = 0
            if i < 5 then
                pos = i
            else
                pos = i - 6
            end
            local texture = arrows.static[pos]--"ReplaceableTextures\\CommandButtons\\BTNCryptFiendUnBurrow.blp"
            local x, y = arrows.x, arrows.y
            local image = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
            local step = 0.08
            local r=GetRandomInt(0,3)
            local randomStep=(step*i)-x
            
            arrows.up[i] = image

            BlzFrameSetAlpha(image, 0)
            BlzFrameSetTexture(image, texture, 0, true)
            BlzFrameSetSize(image, 0.08, 0.08)
            BlzFrameSetParent(image, BlzGetFrameByName("ConsoleUIBackdrop", 0))
            BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, randomStep, y)
        
        end
    end

    TimerStart(CreateTimer(), 0.4, false, function()

        for i = 1, #BoPeeBo do
            TimerStart(CreateTimer(), BoPeeBo[i]*.6, false, function()
                local step=nil
                if ArroPos[i] then
                    step=ArroPos[i]
                else
                    --print("таблица не заполнена, рандомимся ")
                    step={1,2,3,4,6,8,9,10}
                    step=step[GetRandomInt(1,#step)] --никогда так не делайте
                end
                CreateArrow( 0.01,step)
                
                DestroyTimer(GetExpiredTimer())
            end)
        end
    end)

    
    local keys = {
        left ={
            key = {
                OSKEY_LEFT,
                OSKEY_A
                },            
        },
        right = {
            key = {
                OSKEY_RIGHT,
                OSKEY_D
                },  
        },
        up = {
            key = {
                OSKEY_UP,
                OSKEY_W
                },  
        },
        down = {
            key = {
                OSKEY_DOWN,
                OSKEY_S
                },  
        }
    }

    for v,k in pairs(keys) do
        local trigger = CreateTrigger()
        local key = k.key
        TriggerAddAction(trigger, function()
            KeyPressed(v) 
        end)
        for v,k in pairs(key) do
            BlzTriggerRegisterPlayerKeyEvent(trigger, Player(0), k, 0, false)
        end
    end

end

musicStart = false

function getFirstArrow()
    for v,k in ipairs(arrows.list) do
        if not k.used then
            return k
        end
    end
    return null
end

function KeyPressed(key)
    local arrow = getFirstArrow()
    if arrow == null then
        return
    end
    local types = {
        ["up"] = 3,
        ["down"] = 2,
        ["left"] = 1,
        ["right"] = 4,
    }
    local type = types[key]
    if arrow.type == type and not arrow.swaped then
        local delta = math.abs(arrows.y - arrow.y)
        print(delta)
        if delta < 0.16 then
            BlzFrameSetTexture(arrows.up[type+6], arrows.lighted[type], 0, true)
            TimerStart(CreateTimer(), 0.25, false, function() 
                BlzFrameSetTexture(arrows.up[type+6], arrows.static[type], 0, true)
    
            end)
            arrow.swaped = true
        end
    else
        normal_sound("Mistake", arrows.x, arrows.y)
    end
end

function CreateArrow(speed, pozX)
    local type = 0
    local isPlayer = false
    if pozX < 5 then
        type = pozX
    else
        type = pozX - 6
        isPlayer = true
    end

    local texture = arrows.standart[type]
    local x, y = 0.08, 0
    local image = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    local step = 0.08
    local r=GetRandomInt(0,3)
    local randomStep=(step*pozX)-x

    BlzFrameSetAlpha(image, 0)
    BlzFrameSetTexture(image, texture, 0, true)
    BlzFrameSetSize(image, 0.08, 0.08)
    BlzFrameSetParent(image, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, randomStep, y)

    local swapScale = 0
    local arrow = {
        frame = image,
        type = type,
        y = 0,
        swaped = false
    }
    if isPlayer then
         arrow = {
            frame = image,
            type = type,
            y = 0,
            swaped = false
        }
        arrows.list[#arrows.list+1] = arrow
    end
    TimerStart(CreateTimer(), TIMER_PERIOD, true, function() 
        y = y + speed
        arrow.y = y
        BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, randomStep, y)
        if y >= 0.4475 and not musicStart then
            normal_sound("All", x, y)
            musicStart = true
        end
        if y >= 0.53 and pozX < 5 and arrow.swaped==false then    
            BlzFrameSetTexture(arrows.up[pozX], arrows.lighted[type], 0, true)
            TimerStart(CreateTimer(), 0.2, false, function() 
                BlzFrameSetTexture(arrows.up[pozX], arrows.static[type], 0, true)

            end)
                
            arrow.swaped = true            
        end
        
        if y >= 0.6  then
            if not arrow.swaped then
                normal_sound("Mistake",x,y)
            end
            DestroyTimer(GetExpiredTimer())
            BlzFrameSetVisible(image, false)
            if isPlayer then
                table.remove(arrows.list, 1)
            end
        end
    end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 02.08.2021 19:03
---
function normal_sound (s,x,y,volume)
    local  snd = CreateSound(s, false, true, true, 10, 10, "CombatSoundsEAX")
    if not volume then volume=127 end
    SetSoundChannel(snd, 40)
    SetSoundVolume(snd, volume)
    SetSoundPitch(snd, 1)
    SetSoundDistances(snd, 600, 10000)
    SetSoundDistanceCutoff(snd, 2100)
    SetSoundConeAngles(snd, 0.0, 0.0, 127)
    SetSoundConeOrientation(snd, 0.0, 0.0, 0.0)
    SetSoundPosition(snd, x, y, 50)
    StartSound(snd)
    KillSoundWhenDone(snd)
    return snd
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 27.05.2020 23:15
---
---
---
--[[
do
    local DestroyTimerOrigin = DestroyTimer -- записываем DestroyTimer в переменную
    local PauseTimerCached = PauseTimer -- локальная переменная используется для более быстрого вызова функции в дальнейшем
    function DestroyTimer(t)
        PauseTimerCached(t)  -- вызываем PauseTimer из переменной
        DestroyTimerOrigin(t) -- вызываем DestroyTimer из переменной
    end
end]]
local origDestroyTimer = DestroyTimer
function DestroyTimer(t)

    if t == nil then
        t = GetExpiredTimer()
        if t == nil then
            --print("в функцию разрушения таймера передано что-то нето")
            return
        end

    end
    PauseTimer(t)
    GCountTimers = GCountTimers - 1
    origDestroyTimer(t)
end

local realTimerStart = TimerStart
GCountTimers = 0
TimerStart = function(timer, duration, repeating, callback)
    local pcallback = function()
        if callback == nil then
            return
        end
        local status, err = pcall(callback)
        if not status then
            print(err)
        end
    end
    GCountTimers = GCountTimers + 1
    --print("Запущено таймеров", GCountTimers)
    realTimerStart(timer, duration, repeating, pcallback)
end

local realTriggerAddAction = TriggerAddAction
TriggerAddAction = function(trig, callback)
    local pcallback = function()
        local status, err = pcall(callback)
        if not status then
            print(err)
        end
    end
    realTriggerAddAction(trig, pcallback)
end

--CUSTOM_CODE
