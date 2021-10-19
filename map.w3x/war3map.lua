gg_rct_Region_000 = nil
gg_cam_Camera_001 = nil
gg_trg_SetCam = nil
gg_trg_PeriodCam = nil
gg_unit_opeo_0003 = nil
gg_unit_Hart_0002 = nil
gg_trg_Jaina = nil
gg_unit_Hjai_0001 = nil
function InitGlobals()
end

function CreateUnitsForPlayer0()
    local p = Player(0)
    local u
    local unitID
    local t
    local life
    gg_unit_Hart_0002 = BlzCreateUnitWithSkin(p, FourCC("Hart"), -119.2, -99.7, 351.734, FourCC("Hart"))
end

function CreateUnitsForPlayer1()
    local p = Player(1)
    local u
    local unitID
    local t
    local life
    gg_unit_Hjai_0001 = BlzCreateUnitWithSkin(p, FourCC("Hjai"), -6.6, 52.0, 277.203, FourCC("Hjai"))
end

function CreateUnitsForPlayer6()
    local p = Player(6)
    local u
    local unitID
    local t
    local life
    gg_unit_opeo_0003 = BlzCreateUnitWithSkin(p, FourCC("opeo"), 101.0, -89.5, 175.620, FourCC("opeo"))
end

function CreateNeutralPassive()
    local p = Player(PLAYER_NEUTRAL_PASSIVE)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("ogru"), -357.7, 349.7, 293.664, FourCC("ogru"))
    u = BlzCreateUnitWithSkin(p, FourCC("ogru"), -416.3, 296.8, 303.126, FourCC("ogru"))
    u = BlzCreateUnitWithSkin(p, FourCC("ogru"), 413.1, 289.5, 212.191, FourCC("ogru"))
    u = BlzCreateUnitWithSkin(p, FourCC("ogru"), 438.6, 228.2, 212.191, FourCC("ogru"))
    u = BlzCreateUnitWithSkin(p, FourCC("ohun"), 233.7, 290.4, 234.860, FourCC("ohun"))
    u = BlzCreateUnitWithSkin(p, FourCC("odoc"), -200.7, 321.3, 290.700, FourCC("odoc"))
    u = BlzCreateUnitWithSkin(p, FourCC("ndr2"), 656.8, 82.9, 110.097, FourCC("ndr2"))
end

function CreatePlayerBuildings()
end

function CreatePlayerUnits()
    CreateUnitsForPlayer0()
    CreateUnitsForPlayer1()
    CreateUnitsForPlayer6()
end

function CreateAllUnits()
    CreatePlayerBuildings()
    CreateNeutralPassive()
    CreatePlayerUnits()
end

function CreateRegions()
    local we
    gg_rct_Region_000 = Rect(-64.0, 64.0, 0.0, 96.0)
end

function CreateCameras()
    gg_cam_Camera_001 = CreateCameraSetup()
    CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_ROTATION, 90.4, 0.0)
    CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_ANGLE_OF_ATTACK, 331.1, 0.0)
    CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_TARGET_DISTANCE, 477.9, 0.0)
    CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_ROLL, 0.0, 0.0)
    CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_NEARZ, 16.0, 0.0)
    CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_LOCAL_PITCH, 0.0, 0.0)
    CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_LOCAL_YAW, 0.0, 0.0)
    CameraSetupSetField(gg_cam_Camera_001, CAMERA_FIELD_LOCAL_ROLL, 0.0, 0.0)
    CameraSetupSetDestPosition(gg_cam_Camera_001, -9.8, 318.0, 0.0)
end

function Trig_SetCam_Func008A()
    PauseUnitBJ(true, GetEnumUnit())
        UnitAddAbility(GetEnumUnit(),FourCC("Aloc"))
end

function Trig_SetCam_Actions()
    ResetUnitAnimation(gg_unit_Hart_0002)
    ResetUnitAnimation(gg_unit_opeo_0003)
    SetCameraBoundsToRectForPlayerBJ(Player(0), gg_rct_Region_000)
    EnablePreSelect(false, false)
    CameraSetupApplyForPlayer(true, gg_cam_Camera_001, Player(0), 0)
    EndThematicMusicBJ()
    StopMusicBJ(true)
    ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), Trig_SetCam_Func008A)
end

function InitTrig_SetCam()
    gg_trg_SetCam = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_SetCam, 0.10)
    TriggerAddAction(gg_trg_SetCam, Trig_SetCam_Actions)
end

function Trig_PeriodCam_Actions()
    CameraSetupApplyForPlayer(false, gg_cam_Camera_001, Player(0), 1.00)
    SetAllyColorFilterState(0)
end

function InitTrig_PeriodCam()
    gg_trg_PeriodCam = CreateTrigger()
    TriggerRegisterTimerEventPeriodic(gg_trg_PeriodCam, 0.01)
    TriggerAddAction(gg_trg_PeriodCam, Trig_PeriodCam_Actions)
end

function InitCustomTriggers()
    InitTrig_SetCam()
    InitTrig_PeriodCam()
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
    SetAmbientDaySound("BarrensDay")
    SetAmbientNightSound("BarrensNight")
    SetMapMusic("Music", true, 0)
    CreateRegions()
    CreateCameras()
    CreateAllUnits()
    InitBlizzard()
    InitGlobals()
    InitCustomTriggers()
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



























function Trig_SetCam_Func008A()
    PauseUnitBJ(true, GetEnumUnit())
        UnitAddAbility(GetEnumUnit(),FourCC("Aloc"))
end

function Trig_SetCam_Actions()
    ResetUnitAnimation(gg_unit_Hart_0002)
    ResetUnitAnimation(gg_unit_opeo_0003)
    SetCameraBoundsToRectForPlayerBJ(Player(0), gg_rct_Region_000)
    EnablePreSelect(false, false)
    CameraSetupApplyForPlayer(true, gg_cam_Camera_001, Player(0), 0)
    EndThematicMusicBJ()
    StopMusicBJ(true)
    ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()), Trig_SetCam_Func008A)
end

function InitTrig_SetCam()
    gg_trg_SetCam = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_SetCam, 0.10)
    TriggerAddAction(gg_trg_SetCam, Trig_SetCam_Actions)
end

function Trig_Jaina_Actions()
    SetUnitAnimation(gg_unit_Hjai_0001, "stand")
        SetUnitAnimationByIndex(gg_unit_Hjai_0001,30)
        UnitAddAbility(gg_unit_Hjai_0001, FourCC('Aave'))
    SetUnitFlyHeightBJ(gg_unit_Hjai_0001, 10.00, 0.00)
end

function InitTrig_Jaina()
    gg_trg_Jaina = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_Jaina, 0.01)
    TriggerAddAction(gg_trg_Jaina, Trig_Jaina_Actions)
end

function Trig_PeriodCam_Actions()
    CameraSetupApplyForPlayer(false, gg_cam_Camera_001, Player(0), 1.00)
    SetAllyColorFilterState(0)
end

function InitTrig_PeriodCam()
    gg_trg_PeriodCam = CreateTrigger()
    TriggerRegisterTimerEventPeriodic(gg_trg_PeriodCam, 0.01)
    TriggerAddAction(gg_trg_PeriodCam, Trig_PeriodCam_Actions)
end

function InitCustomTriggers()
    InitTrig_SetCam()
    InitTrig_Jaina()
    InitTrig_PeriodCam()
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
    SetAmbientDaySound("BarrensDay")
    SetAmbientNightSound("BarrensNight")
    SetMapMusic("Music", true, 0)
    CreateRegions()
    CreateCameras()
    CreateAllUnits()
    InitBlizzard()
    InitGlobals()
    InitCustomTriggers()
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

function CreateSimpleFrameGlue(posX, PosY, texture, call)
    local NextPoint = 0.039
    if not texture then
        texture = "ReplaceableTextures\\CommandButtons\\BTNSelectHeroOn"
    end
    local SelfFrame = BlzCreateFrameByType('GLUEBUTTON', 'FaceButton', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 'ScoreScreenTabButtonTemplate', 0)
    local buttonIconFrame = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', SelfFrame, '', 0)
    --BlzFrameSetVisible(SelfFrame, false)
   -- BlzFrameSetVisible(SelfFrame, GetLocalPlayer() == player)
    BlzFrameSetAllPoints(buttonIconFrame, SelfFrame)
    BlzFrameSetTexture(buttonIconFrame, texture, 0, true)
    BlzFrameSetSize(SelfFrame, NextPoint, NextPoint)
    BlzFrameSetAbsPoint(SelfFrame, FRAMEPOINT_CENTER, posX, PosY)

    local ClickTrig = CreateTrigger()
    BlzTriggerRegisterFrameEvent(ClickTrig, SelfFrame, FRAMEEVENT_CONTROL_CLICK)
    TriggerAddAction(ClickTrig, function()
        call()
        BlzFrameSetEnable(BlzGetTriggerFrame(), false)
        BlzFrameSetEnable(BlzGetTriggerFrame(), true)
        
    end)

    local TrigMOUSE_ENTER = CreateTrigger()
    BlzTriggerRegisterFrameEvent(TrigMOUSE_ENTER, SelfFrame, FRAMEEVENT_MOUSE_ENTER)

    TriggerAddAction(TrigMOUSE_ENTER, function()
        --print("показать подсказку "..flag)
        mouseOnFrame=true
        --BlzFrameSetVisible(tt[1],true)
        --SetTooltipText(tt[3],"Очистить экран от сообщений")
        

    end)
    local TrigMOUSE_LEAVE = CreateTrigger()
    BlzTriggerRegisterFrameEvent(TrigMOUSE_LEAVE, SelfFrame, FRAMEEVENT_MOUSE_LEAVE)
    TriggerAddAction(TrigMOUSE_LEAVE, function()
        mouseOnFrame=false
        --BlzFrameSetVisible(tt[1],false)
    end)
    return SelfFrame
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
    --KillSoundWhenDone(snd)
    return snd
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 17.10.2021 16:25
---
GHP = 50

--ReplaceableTextures\CommandButtons\BTNPeon.blp
--ReplaceableTextures\CommandButtons\BTNArthas.blp
function CreateHPBar(colorID)
    local intoBar = "Replaceabletextures\\Teamcolor\\Teamcolor" .. colorID

    local into = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(into, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(into, intoBar, 0, true)
    BlzFrameClearAllPoints(into)
    BlzFrameSetPoint(into, FRAMEPOINT_LEFT, BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), FRAMEPOINT_LEFT, 0, -0.25)
    BlzFrameSetParent(into, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    --BlzFrameSetVisible(into, GetLocalPlayer() == Player(visionData.pid))


    -- local textCurrent = BlzCreateFrameByType("TEXT", "ButtonChargesText", into, "", 0)
    -- BlzFrameSetPoint(textCurrent, FRAMEPOINT_LEFT, into, FRAMEPOINT_LEFT, 0.002, 0)
    --local textMax = BlzCreateFrameByType("TEXT", "ButtonChargesText", into, "", 0)
    --BlzFrameSetPoint(textMax, FRAMEPOINT_LEFT, into, FRAMEPOINT_LEFT, 0.082, 0)
    local x, y = 0.04, 0.1

    TimerStart(CreateTimer(), 0.05, true, function()
        --BlzFrameSetText(textCurrent, GHP)
        --BlzFrameSetText(textMax, GHP)
        if GHP > 100 then
            GHP = 100
        end
        if GHP <= 0 then
            GHP = 0
        end
        if colorID == "06" then
            BlzFrameSetSize(into, 100 * 0.8 / 100, 0.05)
            BlzFrameSetAbsPoint(ARTHAS_ICO, FRAMEPOINT_CENTER, (GHP * 0.8 / 100) - 0.02, y)
        else
            --print(GHP * 0.8 / 100)
            if GHP==0 then
                GHP=-5
            end
            BlzFrameSetSize(into, GHP * 0.8 / 100, 0.05)
            if GHP==-5 then
                GHP=0
            end
            BlzFrameSetAbsPoint(PEON_ICO, FRAMEPOINT_CENTER, (GHP * 0.8 / 100) + 0.02, y)
        end

    end)
end

function CreateVSIcons()
    local x, y = 0.04, 0.1
    PEON_ICO = nil
    ARTHAS_ICO = nil

    PEON_ICO = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetSize(PEON_ICO, 0.04, 0.04)
    BlzFrameSetAbsPoint(PEON_ICO, FRAMEPOINT_CENTER, x, y)
    BlzFrameSetTexture(PEON_ICO, "ReplaceableTextures\\CommandButtons\\BTNPeon.blp", 0, true)
    BlzFrameSetParent(PEON_ICO, BlzGetFrameByName("ConsoleUIBackdrop", 0))

    ARTHAS_ICO = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetSize(ARTHAS_ICO, 0.04, 0.04)
    BlzFrameSetAbsPoint(ARTHAS_ICO, FRAMEPOINT_CENTER, x, y)
    BlzFrameSetTexture(ARTHAS_ICO, "ReplaceableTextures\\CommandButtons\\BTNArthas.blp", 0, true)
    BlzFrameSetParent(ARTHAS_ICO, BlzGetFrameByName("ConsoleUIBackdrop", 0))

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
    CreateHPBar("06")
    CreateHPBar("00")
    CreateVSIcons()
    if not ready then
        PlayUnitAnimationFromChat()
        ready = true
    end
end

function RestartInit()
    CreateSimpleFrameGlue(0.4,0.55,"ReplaceableTextures\\CommandButtons\\BTNReplay-Loop.blp", function() 
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
--CUSTOM_CODE
