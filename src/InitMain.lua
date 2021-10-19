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
            RestartInit()
            DestroyTimer(GetExpiredTimer())
        end)
    end
end

TIMER_PERIOD = 1 / 32
TIMER_PERIOD64 = 1 / 64
ready = false
function StarAllSound()
    musics = {}
    isMusicStart = false
    local x, y = GetPlayerStartLocationX(Player(0)), GetPlayerStartLocationY(Player(0))
    --normal_sound("All", x, y)
    musics[#musics+1] = normal_sound("321GO", x, y)
    TimerStart(CreateTimer(), 0.011, false, function()
        --normal_sound("Voices", x, y)
        -- --print("голос")
    end)

    TimerStart(CreateTimer(), 0.01, false, function()
        --normal_sound("Inst", x, y)
        -- --print("фон")
    end)
    StartArrow()
    if not ready then
        CreateHPBar("06")
        CreateHPBar("00")
        CreateVSIcons()
        PlayUnitAnimationFromChat()
        ready = true
    end
end
restartReady = true
function RestartInit()
    CreateSimpleFrameGlue(0.4,0.55,"ReplaceableTextures\\CommandButtons\\BTNReplay-Loop.blp", function() 
        if not restartReady then
            return
        else
            restartReady = false
            GHP = 50
            for k,v in pairs(musics) do
                StopSound(v,true,false)
            end
            for k,v in pairs(arrows.timers) do
                DestroyTimer(v)
            end
            for k,v in pairs(arrows.allArrows) do
                v.removed = true
            end
            for k,v in pairs(arrows.up) do
                BlzFrameSetVisible(v, false)

            end
            SetUnitAnimation(gg_unit_Hart_0002, "Stand Ready")
            SetUnitAnimation(gg_unit_opeo_0003, "Stand Ready")
            StarAllSound()
            TimerStart(CreateTimer(), 1, false, function()
                restartReady = true
            end)
        end
    end)
end


function StartArrow()

arrows = {
    static   = {
        [1] = "Arrows/left.dds",
        [2] = "Arrows/down.dds",
        [3] = "Arrows/up.dds",
        [4] = "Arrows/right.dds"
    },
    lighted  = {
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
    line = {
        [1] = "Arrows/e3",
        [2] = "Arrows/e1",
        [3] = "Arrows/e2",
        [4] = "Arrows/e4",
    },
    up       = {},
    list     = {},
    x        = 0.08,
    y        = 0.55,
    lineTime = 0,
    keyPressed = false,
    lastLine = {},
    timers = {},
    allArrows = {},
}    
    for i = 1, 10 do
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
            local r = GetRandomInt(0, 3)
            local randomStep = (step * i) - x

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
            local t = CreateTimer()
            arrows.timers[#arrows.timers+1] = t
            TimerStart(t, BoPeeBo[i] * .6, false, function()
                local step = nil
                if ArroPos[i] then
                    step = ArroPos[i]
                else
                    ----print("таблица не заполнена, рандомимся ")
                    step = { 1, 2, 3, 4, 6, 8, 9, 10 }
                    step = step[GetRandomInt(1, #step)] --никогда так не делайте
                end
                CreateArrow(0.01, step,i)
                if step <= 4 then
                    --SetCameraTargetControllerNoZForPlayer(Player(0), gg_unit_Hart_0002, 10, 10, true)
                    PanCameraToTimed(GetUnitX(gg_unit_Hart_0002), GetUnitY(gg_unit_Hart_0002), 1)

                else
                    -- SetCameraTargetControllerNoZForPlayer(Player(0), gg_unit_opeo_0003, 10, 10, true)
                    PanCameraToTimed(GetUnitX(gg_unit_opeo_0003), GetUnitY(gg_unit_opeo_0003), 1)
                end

                DestroyTimer(GetExpiredTimer())
            end)
        end
    end)

    local keys = {
        left  = {
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
        up    = {
            key = {
                OSKEY_UP,
                OSKEY_W
            },
        },
        down  = {
            key = {
                OSKEY_DOWN,
                OSKEY_S
            },
        }
    }

    for v, k in pairs(keys) do
        local trigger = CreateTrigger()
        local key = k.key
        TriggerAddAction(trigger, function()
            KeyPressed(v)
        end)
        for v, k in pairs(key) do
            BlzTriggerRegisterPlayerKeyEvent(trigger, Player(0), k, 0, true)
            BlzTriggerRegisterPlayerKeyEvent(trigger, Player(0), k, 0, false)
        end
    end

    --[[TimerStart(CreateTimer(), 5, false, function()
        GHP = 50
        for k,v in pairs(musics) do
            print(k,v)
            StopSound(v,true,false)
        end
        for k,v in pairs(arrows.timers) do
            DestroyTimer(v)
        end
        for k,v in pairs(arrows.allArrows) do
            v.removed = true
        end
        TimerStart(CreateTimer(), 1, false, function()

            StarAllSound()
        end)
        
    end)]]

end

function getFirstArrow()
    for _, k in ipairs(arrows.list) do
        if not k.swaped then
            return k
        end
    end
    return null
end

function KeyPressed(key)
    local arrow = getFirstArrow()

    if not arrows.keyPressed then
        if BlzGetTriggerPlayerIsKeyDown() then
            arrows.keyPressed = true

            if arrow == null then
                return
            end

            local types = {
                ["up"]    = 3,
                ["down"]  = 2,
                ["left"]  = 1,
                ["right"] = 4,
            }
            local type = types[key]
            if arrow.type == type and not arrow.swaped then
                local delta = math.abs(arrows.y - arrow.y)
                ----print("y=",arrow.y)
                ----print(delta)
                --if delta < 0.08 then

                if arrow.y < 0.61 and arrow.y > 0.4 then
                    --print("succes", arrow.y)
                    GHP = GHP - 5
                    BlzFrameSetTexture(arrows.up[type + 6], arrows.lighted[type], 0, true)
                    BlzFrameSetVisible(arrow.frame, false)

                    if not arrow.isline then
                        TimerStart(CreateTimer(), 0.1, false, function()
                            BlzFrameSetTexture(arrows.up[type + 6], arrows.static[type], 0, true)
                            
                        end)
                    else                        
                        TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
                            if not arrows.keyPressed then
                                if arrow.line.all[#arrow.line.all].y < 0.61 and arrow.line.all[#arrow.line.all].y > 0.4 then -- отпестил во время хвост
                                    BlzFrameSetTexture(arrows.up[type + 6], arrows.static[type], 0, true)
                                    DestroyTimer(GetExpiredTimer())

                                else --отпустил с ошибкой
                                    BlzFrameSetTexture(arrows.up[type + 6], arrows.static[type], 0, true)
                                    GHP = GHP - 5
                                    normal_sound("Mistake", arrows.x, arrows.y)
                                    SetUnitAnimation(gg_unit_opeo_0003,"death")
                                    DestroyTimer(GetExpiredTimer())

                                    for k,v in pairs(arrow.line.all) do
                                        if v.y >= 0.53 then
                                            BlzFrameSetVisible(v.frame, false)
                                        end
                                    end
                                end
                            end
                            for k,v in pairs(arrow.line.all) do
                                if v.y >= 0.53 then
                                    BlzFrameSetVisible(v.frame, false)
                                end
                            end
                        end)
                    end
                    arrow.swaped = true
                    PlayPeonAnimation(type)
                else
                    --print("Miss", arrow.y)
                    GHP = GHP + 5
                    normal_sound("Mistake", arrows.x, arrows.y)
                    SetUnitAnimation(gg_unit_opeo_0003,"death")
                end
            else

            end
        end
    end
    if arrows.keyPressed and not BlzGetTriggerPlayerIsKeyDown() then
        arrows.keyPressed = false
        
    end    
    

    
end

function CreateLine(speed, pozX, type, count,arrow)
    local last = {}
    last.all = {}
    for i= 0, count*4-1 do
        local texture = arrows.line[type]
        local x, y = 0.08, -0.04/4-0.08/4*i
        local image = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)        
       
        local step = 0.08
        local r = GetRandomInt(0, 3)
        local randomStep = (step * pozX) - x

        BlzFrameSetAlpha(image, 0)
        BlzFrameSetTexture(image, texture, 0, true)
        BlzFrameSetSize(image, 0.02, 0.08/4)
        BlzFrameSetParent(image, BlzGetFrameByName("ConsoleUIBackdrop", 0))
        BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, randomStep, y)
        last.all[#last.all+1] = {
            frame = image,
            y = y,
            step = randomStep
        }
            --[[TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
                y = y + speed
                BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, randomStep, y)
                if y > 0.7 then
                    DestroyTimer(GetExpiredTimer())
                end
            end)]]
        
    end

    for k,v in pairs(last.all) do
        TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
            if arrow.removed then
                BlzFrameSetVisible(v.frame, false)
                DestroyTimer(GetExpiredTimer())
                return
            end
            v.y = v.y + speed
            BlzFrameSetAbsPoint(v.frame, FRAMEPOINT_CENTER, v.step, v.y)
            if v.y > 0.7 then
                DestroyTimer(GetExpiredTimer())
            end
        end)
    end
    return last

end

function CreateArrow(speed, pozX,number)
    local type = 0
    local isPlayer = false
    if pozX < 5 then
        type = pozX
    else
        type = pozX - 6
        isPlayer = true
    end
    local durations=0

    local last = nil
    local swapScale = 0
    local arrow = {
        frame  = nil,
        type   = type,
        isline = false,
        y      = 0,
        swaped = false,
        line   = nil,
        removed = false,
    }
    if number>1 then
        durations=BoPeeBo[number+1]-BoPeeBo[number] --попытка автопросчёта длительности звука
        if durations > 1 then
            arrow.isline = true
            last = CreateLine(speed, pozX, type, (durations-0.5)/0.5, arrow)
            arrow.line = last
            arrows.lineTime = durations-0.5
        end
    end
    local texture = arrows.standart[type]
    local x, y = 0.08, 0
    local image = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    local step = 0.08
    local r = GetRandomInt(0, 3)
    local randomStep = (step * pozX) - x

    arrow.frame = image

    BlzFrameSetAlpha(image, 0)
    BlzFrameSetTexture(image, texture, 0, true)
    BlzFrameSetSize(image, 0.08, 0.08)
    BlzFrameSetParent(image, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, randomStep, y)

    arrows.allArrows[#arrows.allArrows+1] = arrow

    if isPlayer then
        arrows.list[#arrows.list + 1] = arrow
    end

    
    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
        if arrow.removed then
            BlzFrameSetVisible(arrow.frame, false)
            DestroyTimer(GetExpiredTimer())
            return
        end
        y = y + speed
        arrow.y = y
        BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, randomStep, y)
        if y >= 0.4475 and not isMusicStart then
            musics[#musics+1] = normal_sound("All", x, y)
            isMusicStart = true
        end
        if y >= 0.53 and pozX < 5 and arrow.swaped == false then
            PlayArthasAnimation(type)
            if not arrow.line then
                BlzFrameSetTexture(arrows.up[pozX], arrows.lighted[type], 0, true)
                TimerStart(CreateTimer(), 0.1, false, function()
                    BlzFrameSetTexture(arrows.up[pozX], arrows.static[type], 0, true)
                end)
                BlzFrameSetVisible(image, false)

            else
                BlzFrameSetTexture(arrows.up[pozX], arrows.lighted[type], 0, true)
                BlzFrameSetVisible(image, false)
                TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
                    if arrow.line.all[#arrow.line.all].y >= 0.53 then
                        BlzFrameSetTexture(arrows.up[pozX], arrows.static[type], 0, true)
                        DestroyTimer(GetExpiredTimer())
                    end
                    for k,v in pairs(arrow.line.all) do
                        if v.y >= 0.53 then
                            BlzFrameSetVisible(v.frame, false)
                        end
                    end
                end)
            end
            arrow.swaped = true
        end

        if y >= 0.65 then
            if not arrow.swaped then
                normal_sound("Mistake", x, y)
                --print("Too late", arrow.y)
                GHP = GHP + 5
            end
            DestroyTimer(GetExpiredTimer())
            BlzFrameSetVisible(image, false)
            if isPlayer then
                table.remove(arrows.list, 1)
            end
        end
    end)
end

function PlayPeonAnimation(type)
    ----print(type)
    local anim = { 2, 8, 12, 3 }
    SetUnitAnimationByIndex(gg_unit_opeo_0003, anim[type])
    QueueUnitAnimation(gg_unit_opeo_0003, "Stand Ready")
end

function PlayArthasAnimation(type)
    ----print(type)
    local anim = { 22, 7, 17, 5 }
    SetUnitAnimationByIndex(gg_unit_Hart_0002, anim[type])
    QueueUnitAnimation(gg_unit_Hart_0002, "Stand Ready")

end

function PlayUnitAnimationFromChat()
    local this = CreateTrigger()
    TriggerRegisterPlayerChatEvent(this, Player(0), "", true)
    TriggerRegisterPlayerChatEvent(this, Player(1), "", true)
    TriggerAddAction(this, function()
        local s = S2I(GetEventPlayerChatString())
        SetUnitAnimationByIndex(gg_unit_opeo_0003, s)
        ----print(GetUnitName(gg_unit_Hart_0002).." "..s)
    end)
end