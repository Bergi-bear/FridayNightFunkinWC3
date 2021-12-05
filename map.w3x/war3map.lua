gg_rct_Region_000 = nil
gg_cam_Camera_001 = nil
gg_cam_XRayCam = nil
gg_cam_FirstCinema = nil
gg_trg_SetCam = nil
gg_trg_Jaina = nil
gg_unit_opeo_0003 = nil
gg_unit_Hjai_0001 = nil
gg_unit_Hart_0002 = nil
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
    u = BlzCreateUnitWithSkin(p, FourCC("h001"), -258.9, 182.4, 320.900, FourCC("h001"))
    u = BlzCreateUnitWithSkin(p, FourCC("h002"), -201.6, 324.2, 305.770, FourCC("h002"))
    u = BlzCreateUnitWithSkin(p, FourCC("ogru"), 413.1, 289.5, 212.191, FourCC("ogru"))
    u = BlzCreateUnitWithSkin(p, FourCC("h003"), -453.7, 274.8, 298.050, FourCC("h003"))
    u = BlzCreateUnitWithSkin(p, FourCC("h004"), -69.7, 433.5, 273.600, FourCC("h004"))
    u = BlzCreateUnitWithSkin(p, FourCC("h005"), 226.2, 310.9, 232.885, FourCC("h005"))
    u = BlzCreateUnitWithSkin(p, FourCC("ndr2"), 591.4, 109.4, 281.123, FourCC("ndr2"))
    u = BlzCreateUnitWithSkin(p, FourCC("h005"), 346.1, 162.1, 232.885, FourCC("h005"))
    u = BlzCreateUnitWithSkin(p, FourCC("h006"), -275.4, 32.6, 328.540, FourCC("h006"))
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
    gg_cam_XRayCam = CreateCameraSetup()
    CameraSetupSetField(gg_cam_XRayCam, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    CameraSetupSetField(gg_cam_XRayCam, CAMERA_FIELD_ROTATION, 89.4, 0.0)
    CameraSetupSetField(gg_cam_XRayCam, CAMERA_FIELD_ANGLE_OF_ATTACK, 307.3, 0.0)
    CameraSetupSetField(gg_cam_XRayCam, CAMERA_FIELD_TARGET_DISTANCE, 269.8, 0.0)
    CameraSetupSetField(gg_cam_XRayCam, CAMERA_FIELD_ROLL, 0.0, 0.0)
    CameraSetupSetField(gg_cam_XRayCam, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    CameraSetupSetField(gg_cam_XRayCam, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    CameraSetupSetField(gg_cam_XRayCam, CAMERA_FIELD_NEARZ, 16.0, 0.0)
    CameraSetupSetField(gg_cam_XRayCam, CAMERA_FIELD_LOCAL_PITCH, 0.0, 0.0)
    CameraSetupSetField(gg_cam_XRayCam, CAMERA_FIELD_LOCAL_YAW, 0.0, 0.0)
    CameraSetupSetField(gg_cam_XRayCam, CAMERA_FIELD_LOCAL_ROLL, 0.0, 0.0)
    CameraSetupSetDestPosition(gg_cam_XRayCam, 4.6, -88.0, 0.0)
    gg_cam_FirstCinema = CreateCameraSetup()
    CameraSetupSetField(gg_cam_FirstCinema, CAMERA_FIELD_ZOFFSET, 0.0, 0.0)
    CameraSetupSetField(gg_cam_FirstCinema, CAMERA_FIELD_ROTATION, 56.0, 0.0)
    CameraSetupSetField(gg_cam_FirstCinema, CAMERA_FIELD_ANGLE_OF_ATTACK, 310.9, 0.0)
    CameraSetupSetField(gg_cam_FirstCinema, CAMERA_FIELD_TARGET_DISTANCE, 477.9, 0.0)
    CameraSetupSetField(gg_cam_FirstCinema, CAMERA_FIELD_ROLL, 0.0, 0.0)
    CameraSetupSetField(gg_cam_FirstCinema, CAMERA_FIELD_FIELD_OF_VIEW, 70.0, 0.0)
    CameraSetupSetField(gg_cam_FirstCinema, CAMERA_FIELD_FARZ, 5000.0, 0.0)
    CameraSetupSetField(gg_cam_FirstCinema, CAMERA_FIELD_NEARZ, 16.0, 0.0)
    CameraSetupSetField(gg_cam_FirstCinema, CAMERA_FIELD_LOCAL_PITCH, 0.0, 0.0)
    CameraSetupSetField(gg_cam_FirstCinema, CAMERA_FIELD_LOCAL_YAW, 0.0, 0.0)
    CameraSetupSetField(gg_cam_FirstCinema, CAMERA_FIELD_LOCAL_ROLL, 0.0, 0.0)
    CameraSetupSetDestPosition(gg_cam_FirstCinema, 63.1, 38.5, 0.0)
end

--CUSTOM_CODE
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 27.10.2021 14:39
---
function ArthasDamage()
    UnitAddAbility(GEnemy, FourCC("A001"))
    TimerStart(CreateTimer(), 0.4, false, function()
        Damage(30)
        DestroyEffect(AddSpecialEffect("ThunderclapCasterClassic", GetUnitXY(GPlayer)))
        DestroyTimer(GetExpiredTimer())
    end)
    TimerStart(CreateTimer(), 0.6, false, function()
        UnitRemoveAbility(GEnemy, FourCC("A001"))
        DestroyTimer(GetExpiredTimer())
    end)

end
MUDA = true
function MudaMuda()
    if GetUnitTypeId(GEnemy) ~= FourCC("O000") then
        normal_sound("muda")
    end
    MUDA = true
    if GetUnitTypeId(GEnemy) == FourCC("Hart") then
        TimerStart(CreateTimer(), 3, false, function()
            UnitAddAbility(GEnemy, FourCC("A001"))
            DestroyTimer(GetExpiredTimer())
        end)
        TimerStart(CreateTimer(), 3.5, false, function()
            DestroyTimer(GetExpiredTimer())
            local i = 0
            SetUnitTimeScale(GEnemy, 3)
            TimerStart(CreateTimer(), 0.2, true, function()
                i = i + 1
                --print(i)
                SetUnitAnimationByIndex(GEnemy, 3)
                DestroyEffect(AddSpecialEffect("ThunderclapCasterClassic", GetUnitXY(GPlayer)))
                if i == 18 then
                    DestroyTimer(GetExpiredTimer())
                    SetUnitTimeScale(GEnemy, 1)

                    TimerStart(CreateTimer(), 0.2, false, function()
                        DestroyTimer(GetExpiredTimer())
                        SetUnitAnimationByIndex(GEnemy, 3)
                        TimerStart(CreateTimer(), 0.4, false, function()
                            DestroyTimer(GetExpiredTimer())
                            DestroyEffect(AddSpecialEffect("ThunderclapCasterClassic", GetUnitXY(GPlayer)))
                        end)
                        TimerStart(CreateTimer(), 0.6, false, function()
                            DestroyTimer(GetExpiredTimer())
                            UnitRemoveAbility(GEnemy, FourCC("A001"))
                            AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodAbomination.mdl", GetUnitXY(GPlayer))
                            ShowUnit(GPlayer, false)
                            MUDA = false
                        end)
                    end)
                end
            end)
        end)
    elseif GetUnitTypeId(GEnemy) == FourCC("U000") then

        local xs, ys = GetUnitXY(GEnemy)
        SetUnitMoveSpeed(GEnemy, 50)
        IssuePointOrder(GEnemy, "move", GetUnitX(GPlayer) - 50, GetUnitY(GPlayer))
        TimerStart(CreateTimer(), 3.5, false, function()
            DestroyTimer(GetExpiredTimer())
            local i = 0
            SetUnitTimeScale(GEnemy, 3)
            local k = 0
            local s = 0
            TimerStart(CreateTimer(), TIMER_PERIOD64, true, function()
                s = s + 0.5
                k = k + TIMER_PERIOD64
                --print(math.sin(s)*100+100)
                SetUnitZ(GEnemy, math.sin(s) * 100 + 100)
                if k > 0.2 then
                    k = 0
                    i = i + 1
                    PlayerSeeNoiseInRangeTimed(1, GetUnitXY(GEnemy))

                    DestroyEffect(AddSpecialEffect("ThunderclapCasterClassic", GetUnitXY(GEnemy)))
                    if i == 22 then
                        DestroyTimer(GetExpiredTimer())
                        SetUnitTimeScale(GEnemy, 1)

                        TimerStart(CreateTimer(), 0.0, false, function()
                            DestroyTimer(GetExpiredTimer())

                            TimerStart(CreateTimer(), 0.0, false, function()
                                DestroyTimer(GetExpiredTimer())
                                --UnitRemoveAbility(GEnemy, FourCC("A001"))
                                AddSpecialEffect("Objects\\Spawnmodels\\Undead\\UndeadBlood\\UndeadBloodAbomination.mdl", GetUnitXY(GPlayer))
                                ShowUnit(GPlayer, false)
                                TimerStart(CreateTimer(), 0.1, false, function()
                                    IssuePointOrder(GEnemy, "move", xs, ys)
                                    --SetUnitPosition(GEnemy, xs, ys)
                                    SetUnitZ(GEnemy, 0)
                                    TimerStart(CreateTimer(), 2, false, function()
                                        SetUnitFacing(GEnemy, AngleBetweenUnits(GEnemy, GPlayer))
                                        MUDA = false
                                    end)
                                end)
                            end)
                        end)
                    end
                end
            end)
        end)
    elseif GetUnitTypeId(GEnemy) == FourCC("O000") then
        local xs, ys = GetUnitXY(GEnemy)
        normal_sound("fatalitystart")
        SetUnitMoveSpeed(GEnemy, 50)
        IssuePointOrder(GEnemy, "move", GetUnitX(GPlayer) - 50, GetUnitY(GPlayer))
        TimerStart(CreateTimer(), 2, false, function()
            SetUnitFacing(GEnemy, GetUnitFacing(GEnemy) - 180)
            TimerStart(CreateTimer(), 0.5, false, function()
                --SetCameraBoundsToRectForPlayerBJ(Player(0), gg_rct_Region_000)
                SetCameraBoundsToRectForPlayerBJ(Player(0), bj_mapInitialPlayableArea)
                CameraSetupApplyForPlayer(true, gg_cam_XRayCam, Player(0), 1.00)
                SetUnitAnimation(GEnemy, "Spell Slam")
                TimerStart(CreateTimer(), 0.3, false, function()
                    --print("xraygif")
                    normal_sound("512xray")
                    CreateAndPlayGif(0.4, 0.4, "gif\\xray\\000", 0.4, 39, true,1/32)
                    TimerStart(CreateTimer(), 2, false, function()
                        IssuePointOrder(GEnemy, "move", xs, ys)
                        --SetUnitPosition(GEnemy, xs, ys)
                        CameraSetupApplyForPlayer(false, gg_cam_Camera_001, Player(0), 1.00)
                        TimerStart(CreateTimer(), 2, false, function()
                            SetUnitFacing(GEnemy, AngleBetweenUnits(GEnemy, GPlayer))
                            MUDA = false
                            SetCameraBoundsToRectForPlayerBJ(Player(0), gg_rct_Region_000)
                        end)
                    end)
                end)
            end)
        end)
    end
end
b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'

-- encoding

function enc(data)
    return ((data:gsub('.', function(x)
        local r, b = '', x:byte()
        for i = 8, 1, -1 do
            r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and '1' or '0')
        end
        return r;
    end) .. '0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then
            return ''
        end
        local c = 0
        for i = 1, 6 do
            c = c + (x:sub(i, i) == '1' and 2 ^ (6 - i) or 0)
        end
        return b:sub(c + 1, c + 1)
    end) .. ({ '', '==', '=' })[#data % 3 + 1])
end

-- decoding
function dec(data)
    data = string.gsub(data, '[^' .. b .. '=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then
            return ''
        end
        local r, f = '', (b:find(x) - 1)
        for i = 6, 1, -1 do
            r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and '1' or '0')
        end
        return r;
    end)        :gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then
            return ''
        end
        local c = 0
        for i = 1, 8 do
            c = c + (x:sub(i, i) == '1' and 2 ^ (8 - i) or 0)
        end
        return string.char(c)
    end))
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 21.11.2021 15:29
---

function BugSpeed()
    local table = {
        1,
        0.998,
        0.997,
        0.996,
        0.995,
        0.994,
        0.993,
        0.992,
        0.991,
        0.99, --10
        0.989,
        0.988,
        0.987,
        0.986,
        0.985,
        0.98,
        0.978,
        0.978,
        0.978,
        0.978, --20
        0.976,
        0.975,
        0.975,
        0.975,
        0.975,
        0.975,
        0.975,
        0.98,
        0.99,
        1, --30
        0.997,
        0.995,
        0.994,
        0.993,
        0.992,
        0.991,
        0.99,
        0.99,
        0.99,
        0.989, -- 40
        0.988,
        0.987,
        0.986,
        0.985, --45
    }
    local t = 0
    local k = 1
    TimerStart(CreateTimer(), TIMER_PERIOD64, true, function()
        t = t + TIMER_PERIOD64

        if t >= 60 then
            --print("скорость игры изменена на "..table[k])
            t=0
            DelayPerTime=table[k]
            k=k+1
        end
    end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 05.11.2021 16:12
---

G_OSKEY_LEFT = OSKEY_A
G_OSKEY_RIGHT = OSKEY_D
G_OSKEY_UP = OSKEY_W
G_OSKEY_DOWN = OSKEY_S
GKeyTrig = {}

function CreateKeyTrigger(keys)
    local i = 0
    for v, k in pairs(keys) do
        i = i + 1

        GKeyTrig[i] = CreateTrigger()
        local key = k.key
        TriggerAddAction(GKeyTrig[i], function()
            KeyPressed(v)
        end)
        for v, k in pairs(key) do
            BlzTriggerRegisterPlayerKeyEvent(GKeyTrig[i], Player(0), k, 0, true)
            BlzTriggerRegisterPlayerKeyEvent(GKeyTrig[i], Player(0), k, 0, false)
        end
    end
end

function DestroyKeyTrigger()
    for i = 1, #GKeyTrig do
        DestroyTrigger(GKeyTrig[i])
        --print("триггер уничтожен",i)
    end
end

function
CreateSettingsPanel()
    local selfBox = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "StandardFrameTemplate", 0)
    local tooltip = BlzCreateFrameByType("FRAME", "TestDialog", selfBox, "StandardFrameTemplate", 0)
    local backdrop = BlzCreateFrame("QuestButtonDisabledBackdropTemplate", tooltip, 0, 0)
    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", tooltip, "", 0)
    --BlzFrameSetParent(tooltip, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    --BlzFrameSetParent(backdrop, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    --BlzFrameSetParent(text, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetAbsPoint(selfBox, FRAMEPOINT_CENTER, 0.4, 0.3)
    BlzFrameSetAbsPoint(tooltip, FRAMEPOINT_CENTER, 0.4, 0.3)
    --    BlzFrameSetAllPoints(tooltip,selfBox)
    BlzFrameSetSize(tooltip, 0.2, 0.3)
    BlzFrameSetSize(backdrop, 0.2, 0.3)
    BlzFrameSetSize(text, 0.2 * .75, 0.3 * .9)
    BlzFrameSetPoint(backdrop, FRAMEPOINT_CENTER, tooltip, FRAMEPOINT_CENTER, 0.0, 0.0)
    BlzFrameSetAlpha(backdrop, 150)
    BlzFrameSetText(text, "Настройка управления")
    BlzFrameSetPoint(text, FRAMEPOINT_CENTER, tooltip, FRAMEPOINT_CENTER, 0.04, 0.0)
    BlzFrameSetVisible(tooltip, true)

    -- Создаём бекдропы
    local sx, sy, step = 0.00, 0.08, 0.06
    CreateArrowTemplate(sx, sy, "Arrows\\5", tooltip) --влево
    CreateArrowTemplate(sx, sy - step, "Arrows\\8", tooltip)--вправо
    CreateArrowTemplate(sx, sy - step * 2, "Arrows\\3", tooltip)--вверх
    CreateArrowTemplate(sx, sy - step * 3, "Arrows\\1", tooltip) --вниз

    --создаём поля ввода
    --CreateBox(sx+0.15,sy,tooltip,"A")
    --CreateBox(sx+0.15,sy-step,tooltip,"D")
    --CreateBox(sx+0.15,sy-step*2,tooltip,"W")
    --CreateBox(sx+0.15,sy-step*3,tooltip,"S")
    local InputForChange=nil
    CreateGlueWisHotkey(sx + 0.15, sy, nil, tooltip, "A", function()
        print("Нажмите на клавишу, чтобы сменить её")
    end)

end

function CreateArrowTemplate(x, y, texture, parent)
    local image = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', parent, '', 0)
    BlzFrameSetTexture(image, texture, 0, true)
    BlzFrameSetPoint(image, FRAMEPOINT_LEFT, parent, FRAMEPOINT_LEFT, x, y)
    BlzFrameSetSize(image, 0.08, 0.08)
end

function CreateGlueWisHotkey(x, y, texture, parent, stringKey, call)
    local NextPoint = 0.039
    if not texture then
        texture = "ReplaceableTextures\\CommandButtons\\BTNSelectHeroOn"
    end
    local SelfFrame = BlzCreateFrameByType('GLUEBUTTON', 'FaceButton', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 'ScoreScreenTabButtonTemplate', 0)
    local buttonIconFrame = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', SelfFrame, '', 0)
    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", SelfFrame, "", 0)


    BlzFrameSetText(text, stringKey)
    BlzFrameSetSize(text, 0.01, 0.01)
    BlzFrameSetScale(text,2)

    BlzFrameSetPoint(text, FRAMEPOINT_CENTER, SelfFrame, FRAMEPOINT_CENTER, -0.03, 0.0)
    --BlzFrameSetParent(SelfFrame, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    --BlzFrameSetParent(buttonIconFrame, BlzGetFrameByName("ConsoleUIBackdrop", 0))


    --BlzFrameSetVisible(SelfFrame, false)
    -- BlzFrameSetVisible(SelfFrame, GetLocalPlayer() == player)
    BlzFrameSetAllPoints(buttonIconFrame, SelfFrame)
    BlzFrameSetTexture(buttonIconFrame, texture, 0, true)
    BlzFrameSetSize(SelfFrame, NextPoint, NextPoint)

    --BlzFrameSetAbsPoint(SelfFrame, FRAMEPOINT_CENTER, x,y)
    BlzFrameSetPoint(SelfFrame, FRAMEPOINT_LEFT, parent, FRAMEPOINT_LEFT, x, y)

    local ClickTrig = CreateTrigger()
    BlzTriggerRegisterFrameEvent(ClickTrig, SelfFrame, FRAMEEVENT_CONTROL_CLICK)
    TriggerAddAction(ClickTrig, function()
        call()
        BlzFrameSetEnable(BlzGetTriggerFrame(), false)
        BlzFrameSetEnable(BlzGetTriggerFrame(), true)

    end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 25.11.2021 0:50
---
--CreateAndPlayGif(0.4,0.3,"war3mapImported\\\gargoule_page_000",0.1)
function CreateAndPlayGif(x, y, path, size, endFrame, destroyOnPlay, fps, flag)
    local gifPath = path -- путь до кадров (имя без последнего порядкового символа или нескольких, смотря столько кадров)
    if not endFrame then
        endFrame = 8
    end
    if not fps then
        fps = 1 / 16
    end
    local s = 1
    local gif = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    local firstShow = false
    BlzFrameSetParent(gif, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(gif, gifPath .. 0, 0, true)
    BlzFrameSetSize(gif, size, size)
    BlzFrameSetAbsPoint(gif, FRAMEPOINT_TOP, x, y)
    BlzFrameSetVisible(gif, false)
    TimerStart(CreateTimer(), fps, true, function()
        local totalPath = gifPath .. s
        if not firstShow then
            firstShow = true
            BlzFrameSetVisible(gif, true)
        end
        if flag == 1 then
            --BlzFrameSetVisible(gif, false)
            local sZero = s
            if #(I2S(s)) == 1 then
                sZero = "00" .. s
            elseif #(I2S(s)) == 2 then
                sZero = "0" .. s
            end
            totalPath = gifPath .. sZero
            --print(totalPath)
        else

        end

        BlzFrameSetTexture(gif, totalPath, 0, true)
        --print(s)
        s = s + 1
        if s > endFrame then
            if destroyOnPlay then
                DestroyTimer(GetExpiredTimer())
                BlzFrameSetVisible(gif, false)
                --BlzDestroyFrame(gif)
            else
                s = 1
            end
        end

    end)
    return gif
end
function CreateSimpleFrameGlue(posX, PosY, texture, number, call)
    local NextPoint = 0.039
    if not texture then
        texture = "ReplaceableTextures\\CommandButtons\\BTNSelectHeroOn"
    end
    local SelfFrame = BlzCreateFrameByType('GLUEBUTTON', 'FaceButton', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 'ScoreScreenTabButtonTemplate', 0)
    local buttonIconFrame = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', SelfFrame, '', 0)

    BlzFrameSetParent(SelfFrame, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetParent(buttonIconFrame, BlzGetFrameByName("ConsoleUIBackdrop", 0))


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
        --print("показать подсказку ",flag)
        GHandY = PosY
        mouseOnFrame = true
        BlzFrameSetVisible(ttBox, true)
        BlzFrameSetAbsPoint(ttBox, FRAMEPOINT_CENTER, 0, GHandY)
        local NameTag = L(ColorText2("Название: "), ColorText2("Name: "))
        local DifficultTag = L(ColorText2("\nСложность: "), ColorText2("\nDifficult: "))
        local NotesCountTag = L(ColorText2("\nЧисло нот: "), ColorText2("\nNumber of notes: "))
        local EnemyTag = L(ColorText2("\nВраг: "), ColorText2("\nEnemy: "))
        local AbilityTag=L(ColorText2("\nСпособности: ") ,ColorText2("\nAbilities: ") )
        local TipsTag=L(" \nНажмите на иконку песни, чтобы её выбрать или перезапустить."," \nClick on the song icon to select or restart it.")

        if number == 1 then
            BlzFrameSetText(ttText, NameTag .. "BooBeeBoo" .. DifficultTag .. L(" нулевая"," very easy") .. NotesCountTag .. #BoPeeBo .. EnemyTag .. L("Артас","Arthas") .. AbilityTag .. L("Грязный приём","Dirty trick") .. TipsTag)
        end
        if number == 2 then
            if not LockedState[number] then
                ShowUnlockTips(ttText, PointForUnlock[number])
            else
                BlzFrameSetText(ttText, NameTag .. "Zavodila" .. DifficultTag .. L(" средняя"," medium") .. NotesCountTag .. #Zavodila .. EnemyTag .. L("Керн","Kern") .. AbilityTag .. L("Тряска камеры, зов братвы","Shaking of the camera, the call of the brothers") ..TipsTag)
            end
        end

        if number == 3 then
            if not LockedState[number] then
                ShowUnlockTips(ttText, PointForUnlock[number])
            else
                BlzFrameSetText(ttText, NameTag .. "Hank" .. DifficultTag .. L(" невозможная"," impossible") .. NotesCountTag .. L("Неизвестно","Unknown") .. TipsTag)
            end
        end
        if number == 4 then
            if not LockedState[number] then
                ShowUnlockTips(ttText, PointForUnlock[number])
            else
                BlzFrameSetText(ttText, NameTag .. "Fresh" .. DifficultTag .. L(" низкая"," easy") .. NotesCountTag .. #FreshBit .. EnemyTag .. L("Детеррок","Detherrock") .. AbilityTag .. L("Высасывание жизни","Life Steal") .. TipsTag)
            end
        end
        if number == 5 then
            if not LockedState[number] then
                ShowUnlockTips(ttText, PointForUnlock[number])
            else
                BlzFrameSetText(ttText, NameTag .. "M.I.L.F" .. DifficultTag .. L(" высокая"," hard").. NotesCountTag .. #Milf .. EnemyTag ..L("Демонесса","Demoness").. TipsTag)
            end
        end
        if number == 6 then
            if not LockedState[number] then
                ShowUnlockTips(ttText, PointForUnlock[number])
            else
                BlzFrameSetText(ttText, NameTag .. "Pritoptat" .. DifficultTag .. L(" средняя"," medium")  .. NotesCountTag .. #PritoptatShort .. TipsTag)
            end
        end

    end)
    local TrigMOUSE_LEAVE = CreateTrigger()
    BlzTriggerRegisterFrameEvent(TrigMOUSE_LEAVE, SelfFrame, FRAMEEVENT_MOUSE_LEAVE)
    TriggerAddAction(TrigMOUSE_LEAVE, function()
        mouseOnFrame = false
        BlzFrameSetVisible(ttBox, false)
        --BlzFrameSetVisible(tt[1],false)
    end)
    return SelfFrame, buttonIconFrame
end

TTBoxY = 0.4
function CreateToolTipBox()
    local tooltip = BlzCreateFrameByType("FRAME", "TestDialog", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "StandardFrameTemplate", 0)
    local backdrop = BlzCreateFrame("QuestButtonDisabledBackdropTemplate", tooltip, 0, 0)
    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", tooltip, "", 0)
    --BlzFrameSetParent(tooltip, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    --BlzFrameSetParent(backdrop, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    --BlzFrameSetParent(text, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetAbsPoint(tooltip, FRAMEPOINT_CENTER, 0, TTBoxY)
    BlzFrameSetSize(tooltip, 0.24, 0.15)
    BlzFrameSetSize(backdrop, 0.24, 0.15)
    BlzFrameSetSize(text, 0.24 * .75, 0.15 * .9)
    BlzFrameSetPoint(backdrop, FRAMEPOINT_CENTER, tooltip, FRAMEPOINT_CENTER, 0.0, 0.0)
    BlzFrameSetAlpha(backdrop, 250)
    BlzFrameSetText(text, "ОШИБКА Первичное описание ещё не обновлено")
    BlzFrameSetPoint(text, FRAMEPOINT_CENTER, tooltip, FRAMEPOINT_CENTER, 0.04, 0.0)
    BlzFrameSetVisible(tooltip, false)
    return tooltip, backdrop, text
end

function ColorText2(s)
    s = "|cffffcc00" .. s .. "|r"
    return s
end

function ShowUnlockTips(ttText, dataUnlock)
    BlzFrameSetText(ttText, L("Чтобы разблокировать эту песню необходимо набрать " .. ColorText2(dataUnlock) .. " очков и пройти предыдушую песню","To unlock this song, you need to type " .. ColorText2(dataUnlock).. " score points and pass the previous song"))
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 17.11.2021 0:52
---
function CreateGameSpeedIndicator()
    local ico = "UI\\Widgets\\Console\\Human\\CommandButton\\human-button-lvls-overlay"
    local frame = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(frame, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(frame, ico, 0, true)
    BlzFrameSetSize(frame, 0.04, 0.04)
    BlzFrameSetAbsPoint(frame, FRAMEPOINT_CENTER, 0.83, 0.51)

    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", frame, "", 0)
    BlzFrameSetParent(text, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetText(text, "GameSpeed")
    BlzFrameSetScale(text, 1)
    BlzFrameSetPoint(text, FRAMEPOINT_LEFT, frame, FRAMEPOINT_LEFT, 0.05, 0.0) --Сдвиг очков относительно эмблемы

    local textGS = BlzCreateFrameByType("TEXT", "ButtonChargesText", frame, "", 0)
    BlzFrameSetParent(textGS, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetText(textGS, GameSpeed)
    BlzFrameSetScale(textGS, 1)
    BlzFrameSetPoint(textGS, FRAMEPOINT_LEFT, frame, FRAMEPOINT_LEFT, 0.01, 0.0) --Сдвиг очков относительно эмблемы

    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
        BlzFrameSetText(textGS, DelayPerTime)
    end)

end


---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 28.10.2021 15:45
---
EMPTY = nil
IcoOfSongsLocked = {}
LockedState = { false, false, false, false, false, false }
PointForUnlock = { 0, 35000, 150000, 10000, 70000, 100000 }
SongCompleteCount = 1
SongCompleted = { false, false, false, false, false, false }

function CreateSongMenus()
    CreateHandArrowWPulse(-0.05, 0.4)
    ttBox, _, ttText = CreateToolTipBox()
    local nextPoint = 0.04
    EMPTY, IcoOfSongsLocked[1] = CreateSimpleFrameGlue(-0.1, 0.4 - nextPoint * 0, "lockedicon", 1, function()
        if LockedState[1] then
            StartNewSong(1)
        else
            --print("Необходимо", PointForUnlock[2], "очков")
            normal_sound("Sound\\Interface\\Error")
        end
    end)

    EMPTY, IcoOfSongsLocked[2] = CreateSimpleFrameGlue(-0.1, 0.4 - nextPoint * 2, "lockedicon", 2, function()
        if LockedState[2] then
            StartNewSong(2)
        else
            --print("Необходимо", PointForUnlock[2], "очков")
            normal_sound("Sound\\Interface\\Error")
        end
    end)

    EMPTY, IcoOfSongsLocked[3] = CreateSimpleFrameGlue(-0.1, 0.4 - nextPoint * 4, "lockedicon", 3, function()
        if LockedState[3] then
            StartNewSong(3)
        else
            --print("Необходимо", PointForUnlock[3], "очков")
            normal_sound("Sound\\Interface\\Error")
        end

    end)

    EMPTY, IcoOfSongsLocked[4] = CreateSimpleFrameGlue(-0.1, 0.4 - nextPoint * 1, "lockedicon", 4, function()
        if LockedState[4] then
            StartNewSong(4)
        else
            --print("Необходимо", PointForUnlock[3], "очков")
            normal_sound("Sound\\Interface\\Error")
        end

    end)
    EMPTY, IcoOfSongsLocked[5] = CreateSimpleFrameGlue(-0.1, 0.4 - nextPoint * 3, "lockedicon", 5, function()
        if LockedState[5] then
            StartNewSong(5)
        else
            --print("Необходимо", PointForUnlock[3], "очков")
            normal_sound("Sound\\Interface\\Error")
        end

    end)
    EMPTY, IcoOfSongsLocked[6] = CreateSimpleFrameGlue(-0.1, 0.4 - nextPoint * 5, "lockedicon", 6, function()
        if LockedState[6] then
            StartNewSong(6)
        else
            --print("Необходимо", PointForUnlock[3], "очков")
            normal_sound("Sound\\Interface\\Error")
        end

    end)
end

function CreateHandArrowWPulse(x, y)
    local image = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(image, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(image, "hand", 0, true)
    BlzFrameSetSize(image, 0.08, 0.08)
    BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, x, y)
    GHandY = y
    local i = 0
    TimerStart(CreateTimer(), 0.1, true, function()
        i = i + 1
        BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, x + (math.sin(i) / 100), GHandY)
    end)
end

function StartNewSong(number)
    local heroTable = {
        FourCC("Hart"), --артас
        FourCC("O000"), -- Таурен
        nil, -- хенк
        FourCC("U000"), -- детерок
        FourCC("n000"), --демонесса
        FourCC("Hart"), --артас
    }
    if not MUDA then
        if not restartReady then
            return
        else
            if IsUnitHidden(GPlayer) then
                AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitXY(GPlayer))
                SetUnitAnimation(GEnemy, "spell")
            end
            ShowUnit(GPlayer, true)
            restartReady = false
            GameIsDefeat = false
            GHP = 50
            if heroTable[number] then
                ReplaceHeroForCurrentSong(number, heroTable[number])
            else
                --print(number,"Героя нет в базе, будет артас")
            end
            BreakCurrentLevel()
            SetUnitAnimation(GEnemy, "Stand Ready")
            SetUnitAnimation(GPlayer, "Stand Ready")
            StarAllSound(number)
            TimerStart(CreateTimer(), 0.3, false, function()
                DestroyTimer(GetExpiredTimer())
                restartReady = true
            end)
        end
    end
end

function ReplaceHeroForCurrentSong(number, id)
    if number ~= SONG then
        local x, y = GetUnitXY(GEnemy)
        ShowUnit(GEnemy, false)
        KillUnit(GEnemy)
        CreateAndFallUnit(id, x, y)
    else
        --print("замена персонажа не требуется")
    end
end

function CreateAndFallUnit(id, x, y)
    GEnemy = CreateUnit(Player(0), id, x, y, 90)
    UnitAddAbility(GEnemy, FourCC("Aloc"))
    SetUnitFacing(GEnemy, AngleBetweenUnits(GEnemy, GPlayer))
    SetUnitZ(GEnemy, 1500)
    SetUnitAnimation(GEnemy, "death")
    normal_sound("FallSuperHero")
    TimerStart(CreateTimer(), TIMER_PERIOD64, true, function()
        local z = GetUnitZ(GEnemy)
        SetUnitZ(GEnemy, z - 50)
        --print(z)

        if z <= 50 then
            --print("приземлился")
            --DestroyEffect(AddSpecialEffect("ThunderclapCasterClassic", x, y))

            PlayerSeeNoiseInRangeTimed(1, x, y)
            DestroyTimer(GetExpiredTimer())
        end
    end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 28.11.2021 17:13
---
GMissCount=0
function CreateMissCounter()
    local frame = CreateAndPlayGif(0.83, 0.49, "gif\\gargoule_page_000", 0.04)

    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", frame, "", 0)
    BlzFrameSetParent(text, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetText(text, "0")
    BlzFrameSetScale(text, 2)
    BlzFrameSetPoint(text, FRAMEPOINT_LEFT, frame, FRAMEPOINT_LEFT, 0.025, 0.0) --Сдвиг очков относительно эмблемы

    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
            BlzFrameSetText(text, I2S(R2I(GMissCount)))
    end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 01.12.2021 12:51
---
function CreateRSG()
    TimerStart(CreateTimer(), 0.8, false, function()
        CreateReady()
    end)
    TimerStart(CreateTimer(), 1.3, false, function()
        CreateSet()
    end)
    TimerStart(CreateTimer(), 1.8, false, function()
        CreateGo()
    end)
end

function CreateReady()
    local image = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(image, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(image, "ready", 0, true)
    BlzFrameSetSize(image, 0.32, 0.16)
    BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, 0.4, 0.4)
    local alpha = 255
    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
        alpha = alpha - 10
        BlzFrameSetAlpha(image, R2I(alpha))
        if alpha <= 120 then
            DestroyTimer(GetExpiredTimer())
            BlzDestroyFrame(image)
        end
    end)
end

function CreateSet()
    local image = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(image, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(image, "set", 0, true)
    BlzFrameSetSize(image, 0.32, 0.16)
    BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, 0.4, 0.4)
    local alpha = 255
    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
        alpha = alpha - 10
        BlzFrameSetAlpha(image, R2I(alpha))
        if alpha <= 120 then
            DestroyTimer(GetExpiredTimer())
            BlzDestroyFrame(image)
        end
    end)
end

function CreateGo()
    local image = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(image, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(image, "go", 0, true)
    BlzFrameSetSize(image, 0.32, 0.32)
    BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, 0.4, 0.4)
    local alpha = 255
    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
        alpha = alpha - 10
        BlzFrameSetAlpha(image, R2I(alpha))
        if alpha <= 120 then
            DestroyTimer(GetExpiredTimer())
            BlzDestroyFrame(image)
        end
    end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 04.11.2021 14:23
---
function CreateSelections(frame_relative, timed)

    local new_Frame = BlzCreateFrameByType("SPRITE", "justAName", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "WarCraftIIILogo", 0)
    BlzFrameSetParent(new_Frame, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetPoint(new_Frame, FRAMEPOINT_BOTTOMLEFT, frame_relative, FRAMEPOINT_BOTTOMLEFT, 0.02, 0.02)
    --BlzFrameSetAbsPoint(new_Frame,FRAMEPOINT_CENTER,0.4,0.6)
    BlzFrameSetSize(new_Frame, 1., 1.)
    BlzFrameSetScale(new_Frame, 1.)
    BlzFrameSetModel(new_Frame, "selecter5.mdx", 0)

    TimerStart(CreateTimer(), timed, false, function()
        DestroyTimer(GetExpiredTimer())
       BlzDestroyFrame(new_Frame)
    end)
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 25.10.2021 17:28
---
GameIsDefeat = false
function Damage(amount, isSilent)
    if not isSilent then
        normal_sound("Mistake", 0, 0)
        CreateState("shit")
        GMissCount=GMissCount+1
    end
    SetUnitAnimationByIndex(GPlayer, GetRandomInt(23, 24))
    QueueUnitAnimationBJ(GPlayer, "stand ready")

    GHP = GHP + amount
    if GHP == 95 or (GHP == 100 and GetRandomInt(1, 5) == 1) then
        --print("toasty")
        CreateToasty()
    end
    if GHP >= 101 then
        if not VICTORY then
            GHP = 100
            BreakCurrentLevel()
            GameIsDefeat = true
            SetUnitAnimation(GPlayer, "death")
            local t = { "fnf_loss_sfx", "fnf_loss_sfx-pixel" }
            normal_sound(t[GetRandomInt(1, #t)])
            TimerStart(CreateTimer(), 2, false, function()
                DestroyTimer(GetExpiredTimer())
                if GameIsDefeat then
                    MudaMuda()
                end
            end)
        else

        end
    end
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 05.11.2021 14:34
---
---
---
do
    local InitGlobalsOrigin = InitGlobals
    function InitGlobals()
        InitGlobalsOrigin()

        TimerStart(CreateTimer(), 1, false, function()
            DestroyTimer(GetExpiredTimer())
            if not BlzLoadTOCFile("war3mapimported\\so.toc") then
                print("eeloadtoc")
            end
            --CreateBox(nil, nil, "up")
            --CreateSettingsPanel()

        end)

    end
end

function CreateBox(x, y, parent,flag)
    local editbox = BlzCreateFrame("EscMenuEditBoxTemplate", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0, 0) --create the box
    local eventHandler
    BlzFrameSetText(editbox, flag)
   -- BlzFrameSetAbsPoint(editbox, FRAMEPOINT_CENTER, x, y) -- pos the box
    BlzFrameSetPoint(editbox,FRAMEPOINT_LEFT,parent,FRAMEPOINT_LEFT,x, y)
    BlzFrameSetSize(editbox, 0.04, 0.04) --set the boxs size

    eventHandler = CreateTrigger() --Create the FRAMEEVENT_EDITBOX_ENTER trigger
    BlzTriggerRegisterFrameEvent(eventHandler, editbox, FRAMEEVENT_EDITBOX_ENTER)
    TriggerAddAction(eventHandler, function()
        --print("EditBoxEnter:")
        --print(BlzGetTriggerFrameText())
        --print(GetPlayerName(GetTriggerPlayer()))
    end)

    eventHandler = CreateTrigger() --Create the FRAMEEVENT_EDITBOX_TEXT_CHANGED trigger
    BlzTriggerRegisterFrameEvent(eventHandler, editbox, FRAMEEVENT_EDITBOX_TEXT_CHANGED)

    TriggerAddAction(eventHandler, function()
        DisableTrigger(GetTriggeringTrigger())
        BlzFrameSetText(editbox, "")
        BlzFrameSetText(editbox, BlzGetTriggerFrameText())
        print("текст измненён на", BlzGetTriggerFrameText())
        EnableTrigger(GetTriggeringTrigger())
    end)

end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 24.11.2021 19:59
---
function EffectFromPoint2Point(effModel, x, y, xEnd, yEnd)
    local z = 80
    local eff = AddSpecialEffect(effModel, x, y)
    BlzSetSpecialEffectPosition(eff, x, y, z)
    local angle = AngleBetweenXY(x, y, xEnd, yEnd)
    local angleFake = angle - 45
    BlzSetSpecialEffectScale(eff, 0.1)
    local d=0
    TimerStart(CreateTimer(), TIMER_PERIOD64, true, function()
        d=d+1
        angleFake = angleFake + 7
        x, y = MoveXY(x, y, 20, -180 + angleFake)
        BlzSetSpecialEffectPosition(eff, x, y, z)
        BlzSetSpecialEffectScale(eff, 0.1)
        if DistanceBetweenXY(x, y, xEnd, yEnd) <= 50 or d>=100 then
            DestroyTimer(GetExpiredTimer())
            DestroyEffect(eff)
            --print("долетел")
        end
    end)
end
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
    BlzFrameSetAbsPoint(BlzGetFrameByName("ConsoleUIBackdrop", 0), FRAMEPOINT_TOPRIGHT, 0, 0)
    for i = 0, 11 do
        BlzFrameSetVisible(BlzGetFrameByName("CommandButton_" .. i, 0), false) --отключить
    end
    BlzHideOriginFrames(true)--скрыть всё
    BlzFrameSetScale(BlzFrameGetChild(BlzGetFrameByName("ConsoleUI", 0), 5), 0.001) --рамка мёртвой зоны отключение
    --DrawSelectionPortrait()
end

function MenuFrame()
    BlzFrameSetVisible(BlzGetFrameByName("UpperButtonBarFrame", 0), true)
    for i = 0, 3 do
        --local i=0
        local f10 = BlzGetOriginFrame(ORIGIN_FRAME_SYSTEM_BUTTON, i)
        if i == 0 then
            BlzFrameSetParent(f10, BlzGetFrameByName("ConsoleUIBackdrop", 0))
            BlzFrameSetVisible(f10, true)
            BlzFrameClearAllPoints(f10)
            BlzFrameSetAbsPoint(f10, FRAMEPOINT_CENTER, 0.65 + (0.08 * 2), 0.59)
        elseif i == 1 then
            BlzFrameSetVisible(f10, false)
        elseif i == 2 then
            BlzFrameSetParent(f10, BlzGetFrameByName("ConsoleUIBackdrop", 0))
            BlzFrameSetVisible(f10, true)
            BlzFrameClearAllPoints(f10)
            BlzFrameSetAbsPoint(f10, FRAMEPOINT_CENTER, 0.65 + (0.08 * 1), 0.59)
        elseif i == 3 then
            BlzFrameSetParent(f10, BlzGetFrameByName("ConsoleUIBackdrop", 0))
            BlzFrameSetVisible(f10, true)
            BlzFrameClearAllPoints(f10)
            BlzFrameSetAbsPoint(f10, FRAMEPOINT_CENTER, 0.65 + (0.08 * i), 0.59)
        end
    end
    HideToolTips()
end

function CreateAndStartClock()

	local charges= BlzCreateFrameByType("BACKDROP", "Face", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
	local new_FrameChargesText = BlzCreateFrameByType("TEXT", "ButtonChargesText", charges, "", 0)

	BlzFrameSetTexture(charges, "UI\\Widgets\\Console\\Human\\CommandButton\\human-button-lvls-overlay", 0, true)
	BlzFrameSetSize(charges, 0.08, 0.02)
	BlzFrameSetAbsPoint(charges, FRAMEPOINT_CENTER,0.48 , 0.6-0.01)
	--BlzFrameSetPoint(charges, FRAMEPOINT_BOTTOM, wood, FRAMEPOINT_BOTTOM, 0,0)
	BlzFrameSetText(new_FrameChargesText, Zero(0)..":"..Zero(0)..":"..Zero(0))
	BlzFrameSetPoint(new_FrameChargesText, FRAMEPOINT_CENTER, charges, FRAMEPOINT_CENTER, 0.,0.)
	local sec=0
	local min=0
	local h=0
	TimerStart(CreateTimer(), 1, true, function()
		sec=sec+1
		if sec==60 then
			sec=0
			min=min+1
		end
		if min==60 then
			min=0
			h=h+1
		end

		BlzFrameSetText(new_FrameChargesText, Zero(h)..":"..Zero(min)..":"..Zero(sec))
	end)
end

function Zero(s)
	local ns=""
	if string.len(s)==1 then
		ns="0"..s
	else
		ns=s
	end
	return ns
end

function HideToolTips()
    BlzFrameClearAllPoints(BlzGetOriginFrame(ORIGIN_FRAME_UBERTOOLTIP, 0))
    BlzFrameClearAllPoints(BlzGetOriginFrame(ORIGIN_FRAME_TOOLTIP, 0))
    BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_TOOLTIP, 0), false)
    BlzFrameSetVisible(BlzGetOriginFrame(ORIGIN_FRAME_UBERTOOLTIP, 0), false)
    BlzFrameSetAbsPoint(BlzGetOriginFrame(ORIGIN_FRAME_UBERTOOLTIP, 0), FRAMEPOINT_CENTER, 0.75, 0.55)
    BlzFrameSetAbsPoint(BlzGetOriginFrame(ORIGIN_FRAME_TOOLTIP, 0), FRAMEPOINT_CENTER, 0.75, 0.55)
    BlzFrameSetAlpha(BlzGetOriginFrame(ORIGIN_FRAME_TOOLTIP, 0), 255)
    BlzFrameSetAlpha(BlzGetOriginFrame(ORIGIN_FRAME_UBERTOOLTIP, 0), 0)
end

function DrawSelectionPortrait()

    local Portrait = BlzGetFrameByName("CinematicPortrait",0)
    BlzFrameSetVisible(Portrait, true)
    BlzFrameClearAllPoints(Portrait)
    BlzFrameSetSize(Portrait, 0.16, 0.16)
    --BlzFrameSetParent(Portrait, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetAbsPoint(Portrait, FRAMEPOINT_LEFT, 0.0, 0.04)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 27.11.2021 13:23
---
function ControlGameCam()
    TimerStart(CreateTimer(), TIMER_PERIOD64, true, function()
        if not MUDA then
            CameraSetupApplyForPlayer(false, gg_cam_Camera_001, Player(0), 1.00)

        end
    end)
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
    local offset = 0.03 --оффсет смешения портретов от точки хп бара
    local into = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(into, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(into, intoBar, 0, true)
    BlzFrameClearAllPoints(into)
    BlzFrameSetPoint(into, FRAMEPOINT_LEFT, BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), FRAMEPOINT_LEFT, 0, -0.25)
    BlzFrameSetParent(into, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    local _, y = 0.04, 0.1
    local fakeHP = 0
    --GICOEnemy,GICOPlayer
    TimerStart(CreateTimer(), 0.05, true, function()
        --BlzFrameSetText(textCurrent, GHP)
        --BlzFrameSetText(textMax, GHP)
        if fakeHP < GHP then
            fakeHP = fakeHP + 1

        end
        if fakeHP > GHP then
            fakeHP = fakeHP - 1
        end
        if GHP >= 100 then
            --GHP = 100
            --print(GHP,"большие глаза у пеона")
            BlzFrameSetTexture(PEON_ICO, GICOPlayer[2], 0, true)
        else
            BlzFrameSetTexture(PEON_ICO, GICOPlayer[1], 0, true)
        end
        if GHP <= 0 then
            GHP = 0

        end
        if colorID == "06" then
            -- зелёный
            BlzFrameSetSize(into, 100 * 0.8 / 100, 0.02)
            BlzFrameSetAbsPoint(ARTHAS_ICO, FRAMEPOINT_CENTER, (fakeHP * 0.8 / 100) - offset, y)
        elseif colorID == "20" then
            BlzFrameSetSize(into, 101 * 0.8 / 100, 0.025)
            BlzFrameSetPoint(into, FRAMEPOINT_LEFT, BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), FRAMEPOINT_LEFT, -0.004, -0.25)
        else
            --print(GHP * 0.8 / 100)
            if GHP == 0 then
                GHP = -5
            end
            if fakeHP == 0 then
                fakeHP = -5
            end

            BlzFrameSetSize(into, fakeHP * 0.8 / 100, 0.02)
            if GHP == -5 then
                GHP = 0
            end
            if fakeHP == -5 then
                fakeHP = 0
            end
            if GHP == 0 then
                -- print("глаза")
                BlzFrameSetTexture(ARTHAS_ICO, GICOEnemy[2], 0, true)
                if GPoint>=50000 then
                    if not BlzFrameIsVisible(GifCat) then
                        BlzFrameSetVisible(GifCat,true)
                        BasePoints=200
                    end
                end
            else
                BlzFrameSetTexture(ARTHAS_ICO, GICOEnemy[1], 0, true)
                BlzFrameSetVisible(GifCat,false)
                BasePoints=100
            end
            BlzFrameSetAbsPoint(PEON_ICO, FRAMEPOINT_CENTER, (fakeHP * 0.8 / 100) + offset, y)
        end

    end)
end

function CreateVSIcons()
    local size = 0.08
    local x, y = 0.04, 0.1

    ICO_FLEX(size)
    PEON_ICO = nil
    ARTHAS_ICO = nil

    PEON_ICO = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetSize(PEON_ICO, size, size)
    BlzFrameSetAbsPoint(PEON_ICO, FRAMEPOINT_CENTER, x, y)
    BlzFrameSetTexture(PEON_ICO, "war3mapImported\\PeonBorder", 0, true)
    BlzFrameSetParent(PEON_ICO, BlzGetFrameByName("ConsoleUIBackdrop", 0))

    ARTHAS_ICO = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetSize(ARTHAS_ICO, size, size)
    BlzFrameSetAbsPoint(ARTHAS_ICO, FRAMEPOINT_CENTER, x, y)
    BlzFrameSetTexture(ARTHAS_ICO, "war3mapImported\\ArthasBorder", 0, true)
    BlzFrameSetParent(ARTHAS_ICO, BlzGetFrameByName("ConsoleUIBackdrop", 0))

end
function ICO_FLEX(size)
    TimerStart(CreateTimer(), 1, true, function()

        local min = -2.2
        local max = 2.2
        local i = min
        local delta = 0.05
        local scale = 0.002
        TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
            local f = -(i ^ 2) + 5
            if i <= max then
                i = i + delta
            else
                BlzFrameSetSize(PEON_ICO, size, size)
                BlzFrameSetSize(ARTHAS_ICO, size, size)
                DestroyTimer(GetExpiredTimer())
                isFLEX = false
                return
            end

            BlzFrameSetSize(PEON_ICO, size + f * scale, size + f * scale)
            BlzFrameSetSize(ARTHAS_ICO, size + f * scale, size + f * scale)

        end)
    end)
end

function ShuffleIcons(first, song)

    local enemy = {
        [1] = { "war3mapImported\\ArthasBorder", "war3mapImported\\ArthasBorderEYE" },
        [2] = { "war3mapImported\\Chaming", "war3mapImported\\Chaming" },
        [3] = { "war3mapImported\\DioOld", "war3mapImported\\DioOld" },
        [4] = { "war3mapImported\\DioYang", "war3mapImported\\DioYang" },
    }
    local player = {
        [1] = { "war3mapImported\\PeonBorder", "war3mapImported\\PeonBorderEYE" },
        [2] = { "war3mapImported\\Shrek", "war3mapImported\\Shrek" },
        [3] = { "war3mapImported\\jojoShrek", "war3mapImported\\jojoShrek" },
    }
    if GetUnitTypeId(GEnemy) == FourCC("U000") then
        enemy = {
            [1] = { "war3mapImported\\deterrock", "war3mapImported\\deterrock" },
            [2] = { "war3mapImported\\deterrock2", "war3mapImported\\deterrock2" },
            [3] = { "war3mapImported\\deterrock3", "war3mapImported\\deterrock3" },
            [4] = { "war3mapImported\\deterrock4", "war3mapImported\\deterrock4" },
        }
    end
    if GetUnitTypeId(GEnemy) == FourCC("O000") then
        enemy = {
            [1] = { "war3mapImported\\kern1", "war3mapImported\\kern1" },
            [2] = { "war3mapImported\\kern2", "war3mapImported\\kern2" },
            [3] = { "war3mapImported\\kern3", "war3mapImported\\kern3" },
        }
    end

        if GetUnitTypeId(GEnemy) == FourCC("n000") then
        enemy = {
            [1] = { "war3mapImported\\demon1", "war3mapImported\\demon1" },
        }
    end

    if first then
        GICOEnemy, GICOPlayer = enemy[1], player[1]
    else
        GICOEnemy, GICOPlayer = enemy[GetRandomInt(1, #enemy)], player[GetRandomInt(1, #player)]
    end
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
        CinematicModeBJ(true, GetPlayersAll())
        CinematicFadeBJ(bj_CINEFADETYPE_FADEOUT, 0, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0.00)
        TimerStart(CreateTimer(), 0.05, false, function()
            DestroyTimer(GetExpiredTimer())
            EnablePreSelect(false, false)
            EnableDragSelect(false, false)
            GPlayer = gg_unit_opeo_0003
            GEnemy = gg_unit_Hart_0002
            GJaina = gg_unit_Hjai_0001
            --
            ---perebor = CreateGroup()

            CreateAndStartClock()

            StartGCTracker()

            ControlGameCam()
            BugSpeed() -- функция для увеличения скорости игры авто матически
            InitTaurens()

            StartFirstCinema()
            DoNotSaveReplay()
            SetGameSpeed(MAP_SPEED_FASTEST)
            LockGameSpeedBJ()
        end)
        TimerStart(CreateTimer(), 0.5, false, function()
            musics = {}
            isMusicStart = false
            arrows = {}
            --StarAllSound(1) --Автостарт Первой песни
            --RestartInit()
            StartArthasStateMachine()
            StartPeonStateMachine()
            PlayUnitAnimationFromChat()
            DestroyTimer(GetExpiredTimer())


            TimerStart(CreateTimer(), 1, false, function()
                InitEtcGroup()
            end)
        end)
    end
end

TIMER_PERIOD = 1 / 32
TIMER_PERIOD64 = 1 / 64
ready = true
Camera2Left = true
GameSpeed = 0.6
SONG = 1
DelayPerTime = 1
BasePoints = 100

function StarAllSound(numberSong)
    musics = {}
    isMusicStart = false
    local x, y = GetPlayerStartLocationX(Player(0)), GetPlayerStartLocationY(Player(0))
    --normal_sound("All", x, y)
    musics[#musics + 1] = normal_sound("321GO", x, y)
    CreateRSG()
    if numberSong == 1 then
        SONG = 1
        GameSpeed = 0.6
        StartArrow(BoPeeBo, ArroPos, "AllForce")
    elseif numberSong == 2 then
        SONG = 2
        GameSpeed = 0.454 --
        StartArrow(Zavodila, ZavodilaPOS, "zavodila")
        --print("Второй песни ещё не существует")
    elseif numberSong == 4 then
        SONG = 4
        GameSpeed = 0.5 --
        --print("и где музыка из фреша")
        StartArrow(FreshBit, FreshPos, "Fresh")
    elseif numberSong == 5 then
        SONG = 5
        GameSpeed = 0.331 --
        --print("старт музыки из милф")
        StartArrow(Milf, MilfPos, "Milf")
    elseif numberSong == 3 then
        SONG = 3
        --print("Эта песня ещё не готова, спасибо за игру")
        --normal_sound("HankMP3")
        StartArrow(HankTable, HankTablePOS, "HankMP3")
        MUDA = true
        VICTORY = true
        CreateJojoReference(10, true)
        CreateJojoReference(10, true)

        TimerStart(CreateTimer(), 5, false, function()
            DestroyTimer(GetExpiredTimer())
            TimerStart(CreateTimer(), 0.15, true, function()
                Damage(1)
                if REFERENCE then
                    DestroyTimer(GetExpiredTimer())
                end
            end)
        end)

        TimerStart(CreateTimer(), 10, false, function()
            DestroyTimer(GetExpiredTimer())
            BreakCurrentLevel()
        end)
    elseif numberSong == 6 then
        SONG = 6
        GameSpeed = 0.34 --
        --print("старт музыки из милф")
        StartArrow(PritoptatShort, PritoptatShortArrows, "Pritoptat")
    else
        print("Ошибка вы попутались запустить песню без кода")
    end
    --0 минута 1
    -- 20 минутв 0.975
    if GPoint >= 10000 then
        ShuffleIcons(false)
    end
    GameSpeed = GameSpeed * DelayPerTime
    --print("Текущая игровая скорость "..GameSpeed)
    if not ready then
    --перенёс
    end
end
restartReady = true

function BreakCurrentLevel()
    for _, v in pairs(musics) do
        StopSound(v, true, false)
        ETCPlay(false)
    end

    --if arrows[1] then
    -- print("Первый запуск очистки")
    for i, v in pairs(arrows.timers) do
        --  print("очистка таймера",i)
        DestroyTimer(v)
    end
    for _, v in pairs(arrows.allArrows) do
        v.removed = true
    end
    for _, v in pairs(arrows.up) do
        BlzFrameSetVisible(v, false)
    end

    --end
end

function StartArrow(notes, arrowPos, music)

    arrows = {
        static     = {
            [1] = "Arrows/left.dds",
            [2] = "Arrows/down.dds",
            [3] = "Arrows/up.dds",
            [4] = "Arrows/right.dds"
        },
        lighted    = {
            [1] = "Arrows/5.dds",
            [2] = "Arrows/1.dds",
            [3] = "Arrows/3.dds",
            [4] = "Arrows/8.dds"
        },
        standart   = {
            [1] = "Arrows/7.dds",
            [2] = "Arrows/2.dds",
            [3] = "Arrows/4.dds",
            [4] = "Arrows/6.dds"
        },
        line       = {
            [1] = "Arrows/e3",
            [2] = "Arrows/e1",
            [3] = "Arrows/e2",
            [4] = "Arrows/e4",
        },
        up         = {},
        list       = {},
        x          = 0.04, -- появление первой стрелки по левому краю
        y          = 0.55,
        step       = 0.08,
        lineTime   = 0,
        keyPressed = false,
        lastLine   = {},
        timers     = {},
        allArrows  = {},
        X          = { },
        Y          = { },
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
            local step = arrows.step

            local nextStep = (step * i) - x

            arrows.up[i] = image

            BlzFrameSetAlpha(image, 0)
            BlzFrameSetTexture(image, texture, 0, true)
            BlzFrameSetSize(image, 0.08, 0.08)
            BlzFrameSetParent(image, BlzGetFrameByName("ConsoleUIBackdrop", 0))
            BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, nextStep, y)
            arrows.X[i] = nextStep
            arrows.Y[i] = y

        end
    end

    TimerStart(CreateTimer(), 0.4, false, function()

        --StartBitMaker
        if SONG == 2 then
            --print("Start")
            local timeToMove = false
            TimerStart(CreateTimer(), 2 * GameSpeed, true, function()
                --print("bit")
                if GCurrentArrow > 420 and not timeToMove then
                    MoveTaurens()
                    timeToMove = true
                end

                if GCurrentArrow > 494 then
                    TaurenStomp()
                    --print(GCurrentArrow)
                end
                if SONG ~= 2 or MUDA or GCurrentArrow >= 600 then
                    DestroyTimer(GetExpiredTimer())
                    MoveTaurensBack()
                end
            end)
        end
        for i = 1, #notes do
            --print(2)
            local t = CreateTimer()
            arrows.timers[#arrows.timers + 1] = t
            local delay = notes[i] * GameSpeed

            TimerStart(t, delay, false, function()
                --print(delay,TimerGetElapsed(t),TimerGetRemaining(t))
                PauseTimer(t)
                DestroyTimer(t)
                CreateArrow(0.01, arrowPos[i], i, notes, music)
                SongCamera(arrowPos[i])

            end)
        end
    end)

    local keys = {
        left  = {
            key = {
                G_OSKEY_LEFT,
                OSKEY_LEFT,
                --OSKEY_A
            },
        },
        right = {
            key = {
                G_OSKEY_RIGHT,
                OSKEY_RIGHT,
                --OSKEY_D
            },
        },
        up    = {
            key = {
                G_OSKEY_UP,
                OSKEY_UP,
                --OSKEY_W
            },
        },
        down  = {
            key = {
                G_OSKEY_DOWN
                --OSKEY_DOWN,
                --OSKEY_S
            },
        }
    }

    CreateKeyTrigger(keys)
    --DestroyKeyTrigger()


end

function getFirstArrow()
    for _, k in ipairs(arrows.list) do
        local delta = math.abs(arrows.y - k.y)
        if delta < 0.08 then
            -- задержка после ошибки

            if not k.swaped and not k.mistake then
                State4Key(k.y)
                return k
            end
        end
    end
    return nil
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
            if not arrow.swaped and not GameIsDefeat then
                if arrow.type == type then
                    local delta = math.abs(arrows.y - arrow.y)
                    ----print("y=",arrow.y)
                    ----print(delta)
                    --if delta < 0.08 then

                    if arrow.y < 0.61 and arrow.y > 0.4 then
                        --print("succes", arrow.y)
                        GHP = GHP - 5
                        AddPoint(BasePoints * STREAK)
                        BlzFrameSetTexture(arrows.up[type + 6], arrows.lighted[type], 0, true)
                        BlzFrameSetVisible(arrow.frame, false)
                        CreateSquack(arrows.X[type + 6], arrows.Y[type])

                        if not arrow.isline then
                            TimerStart(CreateTimer(), 0.1, false, function()
                                BlzFrameSetTexture(arrows.up[type + 6], arrows.static[type], 0, true)
                                DestroyTimer(GetExpiredTimer())
                            end)
                        else
                            TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
                                if not arrows.keyPressed then
                                    if arrow.line.all[#arrow.line.all].y < 0.61 and arrow.line.all[#arrow.line.all].y > 0.4 then
                                        -- отпестил во время хвост
                                        BlzFrameSetTexture(arrows.up[type + 6], arrows.static[type], 0, true)
                                        DestroyTimer(GetExpiredTimer())

                                    else

                                        BlzFrameSetTexture(arrows.up[type + 6], arrows.static[type], 0, true)
                                        Damage(10)
                                        --print("Mistake", "Почему тут ошибка?")
                                        DestroyTimer(GetExpiredTimer())

                                        for k, v in pairs(arrow.line.all) do
                                            if v.y >= 0.53 then
                                                BlzFrameSetVisible(v.frame, false)
                                                BlzDestroyFrame(v.frame)
                                            end
                                        end
                                    end
                                else
                                    --print("нажата не так кнопка")
                                end
                                for _, v in pairs(arrow.line.all) do
                                    if v.y >= 0.53 then
                                        BlzFrameSetVisible(v.frame, false)
                                        BlzDestroyFrame(v.frame)
                                    end
                                end
                            end)
                        end
                        arrow.swaped = true
                        PlayPeonAnimation(type, 1.5)
                    else
                        --print("Miss", arrow.y)


                        --SetUnitAnimation(GPlayer, "stand hit")
                    end

                else
                    if arrow.y < 0.61 and arrow.y > 0.4 then
                        arrow.mistake = true
                        local amount = 5
                        if SONG == 1 then
                            amount = 5
                        elseif SONG == 2 and arrow.number > 110 and arrow.number < 180 then
                            amount = 1 -- меньше урона
                        elseif SONG == 5 then
                            --print("меньше")
                            amount = 1
                        end
                        Damage(amount)

                        --print("не правильная кнопка")
                    end
                end
            end

        end
    end
    if arrows.keyPressed and not BlzGetTriggerPlayerIsKeyDown() then
        arrows.keyPressed = false
        if not GameIsDefeat then
            TimerStart(CreateTimer(), 0.18, false, function()
                if not GameIsDefeat then
                    QueueUnitAnimation(GPlayer, "stand ready")
                end
                DestroyTimer(GetExpiredTimer())
            end)
        end
        --print("Кнопка отпущена")
    end


end

function PlayPeonAnimation(type, durations)
    ----print(type)
    local anim = { 26, 28, 29, 30 }
    SetUnitAnimationByIndex(GPlayer, anim[type])
    PeonIdle = PeonIdle + durations * 0.6
    --print(PeonIdle, "прибавление")
    --QueueUnitAnimation(GPlayer, "Stand Ready")
end

function PlayArthasAnimation(type, durations, number)
    ----print(type)
    --local anim = { 22, 7, 17, 5 }
    --print(durations)
    local anim = { 46, 47, 49, 27 }
    if GetUnitTypeId(GEnemy) == FourCC("Hart") then
        anim = { 46, 47, 49, 27 }
    elseif GetUnitTypeId(GEnemy) == FourCC("U000") then
        anim = { 19, 20, 21, 22 }
    elseif GetUnitTypeId(GEnemy) == FourCC("O000") then
        anim = { 26, 27, 30, 29 }
        --print(number)
        if number > 49 and number < 108 then
            --print("игра на гитаре")
            anim = { 25, 25, 25, 25 }
        else
            PlayerSeeNoiseInRangeTimed(0.1)
        end
    elseif GetUnitTypeId(GEnemy) == FourCC("n000") then
        anim = { 14, 15, 16, 17 }
    end
    if (number == 64 or number == 81 or number == 2) and GetRandomInt(1, 2) == 1 and SONG == 1 then
        anim[type] = 3
        ArthasDamage()
        --print("удар",number)
    end
    SetUnitAnimationByIndex(GEnemy, anim[type])
    ArthasIdle = ArthasIdle + durations * 0.6
end

function PlayUnitAnimationFromChat()
    local this = CreateTrigger()
    TriggerRegisterPlayerChatEvent(this, Player(0), "", true)
    TriggerRegisterPlayerChatEvent(this, Player(1), "", true)
    TriggerAddAction(this, function()
        local s = S2I(GetEventPlayerChatString())
        SetUnitAnimationByIndex(GEnemy, s)
        SetUnitAnimationByIndex(GPlayer, s)
        DelayPerTime = S2R(GetEventPlayerChatString())
        -- CreateSquack()
    end)
end

function StartArthasStateMachine()
    ArthasIdle = 0
    TimerStart(CreateTimer(), 0.25, true, function()
        ArthasIdle = ArthasIdle - 0.25
        if ArthasIdle <= 0 then
            ArthasIdle = 0
            --print("сброс")
            --print("сброс")
            if GetUnitTypeId(GEnemy) == FourCC("Hart") then
                QueueUnitAnimation(GEnemy, "Stand Ready")
            elseif GetUnitTypeId(GEnemy) == FourCC("U000") then
                QueueUnitAnimation(GEnemy, "Stand")
            elseif GetUnitTypeId(GEnemy) == FourCC("O000") then
                QueueUnitAnimation(GEnemy, "Stand Ready")
            elseif GetUnitTypeId(GEnemy) == FourCC("n000") then
                QueueUnitAnimation(GEnemy, "Stand Ready")
            end
        end
    end)
end

function StartPeonStateMachine()
    PeonIdle = 0
    local resetON = false
    TimerStart(CreateTimer(), 0.25, true, function()
        if not GameIsDefeat then
            PeonIdle = PeonIdle - 0.25

            if PeonIdle < 0 then
                PeonIdle = 0
                --print("сброс")
                --print("сброс")

                if resetON then
                    --print("сброс анмации пеона", PeonIdle)
                    resetON = false
                    QueueUnitAnimation(GPlayer, "Stand Ready")

                end
            else
                resetON = true
            end
        else
            --print("отмена сброса")
        end
    end)
end

function DelayAction(delay)
    TriggerSleepAction(delay)
    print(delay)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 07.11.2021 3:21
---
function L(ru, en)
    if en=="" then
        en=ru
    end
    return BlzGetLocale()=="ruRU" and ru or en
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 10.01.2020 23:44
---
---@param x real
---@param y real
---@return boolean
function InMapXY(x, y)
	return x > GetRectMinX(bj_mapInitialPlayableArea) and x < GetRectMaxX(bj_mapInitialPlayableArea) and y > GetRectMinY(bj_mapInitialPlayableArea) and y < GetRectMaxY(bj_mapInitialPlayableArea)
end

---@param x real
---@param distance real
---@param angle real radian
---@return real
function GetPolarOffsetX(x, distance, angle)
	return x + distance * math.cos(angle)
end

---@param y real
---@param distance real
---@param angle real radian
---@return real
function GetPolarOffsetY(y, distance, angle)
	return y + distance * math.sin(angle)
end

---@param x real
---@param distance real
---@param angle real degrees
---@return real
function MoveX(x, distance, angle)
	return x + distance * math.cos(angle * bj_DEGTORAD)
end

---@param y real
---@param distance real
---@param angle real degrees
---@return real
function MoveY(y, distance, angle)
	return y + distance * math.sin(angle * bj_DEGTORAD)
end


local GetTerrainZ_location = Location(0, 0)
---@param x real
---@param y real
---@return real
function GetTerrainZ(x, y)
	MoveLocation(GetTerrainZ_location, x, y)
	return GetLocationZ(GetTerrainZ_location)
end

---@param target unit
---@return real
function GetUnitZ(target)
	MoveLocation(GetTerrainZ_location, GetUnitX(target), GetUnitY(target))
	return GetLocationZ(GetTerrainZ_location) + GetUnitFlyHeight(target)
end

---@param target unit
---@param z real
function SetUnitZ(target, z)
	UnitAddAbility(target, FourCC('Aave'))
	UnitRemoveAbility(target, FourCC('Aave'))
	MoveLocation(GetTerrainZ_location, GetUnitX(target), GetUnitY(target))
	SetUnitFlyHeight(target, z - GetLocationZ(GetTerrainZ_location), 0)
end

---@param h real максимальная высота в прыжке на середине расстояния (x = d / 2)
---@param d real общее расстояние до цели
---@param x real расстояние от исходной цели до точки, где следует взять высоту по параболе
---@return real
function ParabolaZ (h, d, x)
	return (4 * h / d) * (d - x) * (x / d)
end

---@param zs real начальная высота высота одного края дуги
---@param ze real конечная высота высота другого края дуги
---@param h real максимальная высота на середине расстояния (x = d / 2)
---@param d real общее расстояние до цели
---@param x real расстояние от исходной цели до точки
---@return real
function GetParabolaZ(zs, ze, h, d, x)
	return (2 * (zs + ze - 2 * h) * (x / d - 1) + (ze - zs)) * (x / d) + zs
end

---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@return real
function DistanceBetweenXY(xa, ya, xb, yb)
	local dx = xb - xa
	local dy = yb - ya
	return math.sqrt(dx * dx + dy * dy)
end

---@param xa real
---@param ya real
---@param za real
---@param xb real
---@param yb real
---@param zb real
---@return real
function DistanceBetweenXYZ(xa, ya, za, xb, yb, zb)
	local dx = xb - xa
	local dy = yb - ya
	local dz = zb - za
	return math.sqrt(dx * dx + dy * dy + dz * dz)
end

---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@return real radian
function AngleBetweenXY(xa, ya, xb, yb)
	return math.atan(yb - ya, xb - xa)
end

---@param a real radian
---@param b real radian
---@return real radian
function AngleDifference(a, b)
	local c---@type real
	local d---@type real
	if a > b then
		c = a - b
		d = b - a + 2 * math.pi
	else
		c = b - a
		d = a - b + 2 * math.pi
	end
	return c > d and d or c
end

--@author https://xgm.guru/p/wc3/warden-math
---@param a real degrees
---@param b real degrees
---@return real degrees
function AngleDifferenceDeg(a, b)
	a, b = math.abs(a, 360), math.abs(b, 360)
	local x---@type real
	if (a > b) then
		a, b = b, a
	end
	x = b - 360
	if (b - a > a - x) then
		b = x
	end
	return math.abs(a - b)
end

-- Находит длину перпендикуляра от отрезка, заданного xa, ya, xb, yb к точке, заданной xc, yc
--@author https://xgm.guru/p/wc3/perpendicular
---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@param xc real
---@param yc real
---@return real
function Perpendicular (xa, ya, xb, yb, xc, yc)
	return math.sqrt((xa - xc) * (xa - xc) + (ya - yc) * (ya - yc)) * math.sin(math.atan(yc - ya, xc - xa) - math.atan(yb - ya, xb - xa))
end

--@Hate https://xgm.guru/p/wc3/241479
---@param source unit
---@param x real
---@param y real
function SetUnitPositionSmooth(source, x, y)
	local last_x = GetUnitX(source)
	local last_y = GetUnitY(source)
	local bx
	local by
	--print("Смус выполнена")
	SetUnitPosition(source, x, y)
	if (RAbsBJ(GetUnitX(source) - x) > 0.5) or (RAbsBJ(GetUnitY(source) - y) > 0.5) then
		SetUnitPosition(source, x, last_y)
		bx = RAbsBJ(GetUnitX(source) - x) <= 0.5
		SetUnitPosition(source, last_x, y)
		by = RAbsBJ(GetUnitY(source) - y) <= 0.5

		---
		local dx=math.abs(x-last_x)
		if dx>=100 then
			--print("Телепорт бак в функции Smooth"..dx )
		end
		---
		if bx then
			SetUnitPosition(source, x, last_y)
		elseif by then
			SetUnitPosition(source, last_x, y)
		else
			SetUnitPosition(source, last_x, last_y)
		end
	end
end

--Bergi
function GetUnitXY(unit)
	return GetUnitX(unit),GetUnitY(unit)
end

function MoveXY(x,y, distance, angle)
	return x + distance * math.cos(angle * bj_DEGTORAD),y + distance * math.sin(angle * bj_DEGTORAD)
end

function UnitCollisionOFF(unit)
	UnitAddAbility(unit,FourCC('A000'))
	IssueImmediateOrder(unit,"windwalk")
end

function AngleBetweenUnits(caster,target)
	local yb,ya,xb,xa=GetUnitY(target),GetUnitY(caster),GetUnitX(target),GetUnitX(caster)
	return Atan2BJ(yb - ya, xb - xa)
end

function math.clamp (inb, low, high) --
	return math.min( math.max(inb, low ), high )
end

function math.lerp(a, b, t)
	return a + (b - a) * t
end

function repeatN(t, m)
	return math.clamp(t - math.floor(t / m) * m, 0, m)
end

function lerpTheta(a, b, t)
	local dt = repeatN(b - a, 360)
	if dt>180 then	dt=dt-360 end
	return math.lerp(a, a + dt, t)
end

function AngleBetweenXYZ(x1, y1,z1, x2, y2,z2)
	local a=x1*x2+y1*y2+z1*z2
	local b=math.sqrt(x1*x1+y1*y1+z1*z1)
	local c=math.sqrt(x2*x2+y2*y2+z2*z2)
	return math.acos(a/(b*c))
end

-- функия принадлежности точки сектора
-- x1, x2 - координаты проверяемой точки
-- x2, y2 - координаты вершины сектора
-- orientation - ориентация сектора в мировых координатах
-- width - уголовой размер сектора в градусах
-- radius - окружности которой принадлежит сектор
function IsPointInSector(x1,y1,x2,y2,orientation,width,radius)
	local lenght=DistanceBetweenXY(x1,y1,x2,y2)
	local angle=Acos(Cos(orientation*bj_DEGTORAD)*(x1-x2)/lenght+Sin(orientation*bj_DEGTORAD)*(y1-y2)/lenght )*bj_RADTODEG
	return angle<=width and lenght<=radius
end

function GetParabolaPitch(height,distance,i, speed)
	local f = function(x)
		return ParabolaZ(height, distance, x)
	end

	local df = function(x)
		return ParabolaZDerivative(height, distance, x)
	end
	local x0 = i * speed
	local x1 = x0 + speed
	local thisZ = f(x0)
	local someTangentZ = Tangent(f, df, x0, x1)
	return math.atan(someTangentZ - thisZ, x1 - x0)--pitch
end
function Tangent(f, df, x0, x)
	return f(x0) + df(x0) * (x - x0)
end
function ParabolaZDerivative(height, distance, x)
	return 4 * height / distance / distance * (distance - 2 * x)
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 02.08.2021 19:03
---
function normal_sound (s, x, y, volume)
    local snd = CreateSound(s, false, false, false, 10, 10, "")
    if not volume then
        volume = 127
    end
    if not x then
        x = 0
    end
      if not y then
        y = 0
    end
    SetSoundChannel(snd, 1)
    SetSoundVolume(snd, volume)
    StartSound(snd)
    --KillSoundWhenDone(snd)
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
            --print("в функцию разрушения таймера передано что-то не то")
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


function StartGCTracker()
    local t = CreateTimer()
    local track_gc
    local meta = {
        __gc = function (self)
            --print('GC is called at ' .. TimerGetElapsed(t))
            track_gc()
        end
    }

    track_gc = function() setmetatable({}, meta) end

    TimerStart(t, 86400, false)
    track_gc()
end




---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 20.10.2021 22:26
---
GPoint = 0
function CreatePointInterFace()
    local ico = "war3mapImported\\xgm"
    local frame = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(frame, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(frame, ico, 0, true)
    BlzFrameSetSize(frame, 0.04, 0.04)
    BlzFrameSetAbsPoint(frame, FRAMEPOINT_CENTER, 0.83, 0.55)

    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", frame, "", 0)
    BlzFrameSetParent(text, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetText(text, "0")
    BlzFrameSetScale(text, 2)
    BlzFrameSetPoint(text, FRAMEPOINT_LEFT, frame, FRAMEPOINT_LEFT, 0.025, 0.0) --Сдвиг очков относительно эмблемы
    GPointTextFrame = text
    --updatePoint
    local p = GPoint
    local PLerp = p
    TimerStart(CreateTimer(), TIMER_PERIOD64, true, function()
        p = GPoint
        local speed = 1--p-PLerp --8 быстро 1 медленно
        if p - PLerp <= 100 then
            speed = 20
        else
            speed = 1
        end
        PLerp = math.lerp(PLerp, p, TIMER_PERIOD64 * speed)
        local descriptions = I2S(R2I(PLerp))
        --if PLerp> 1 then
        BlzFrameSetText(GPointTextFrame, I2S(R2I(descriptions + 1)))
        --end
    end)
end

function AddPoint(points)
    GPoint = GPoint + points
    --math.lerp(lerp)
    --BlzFrameSetText(GPointTextFrame, descriptions)
    if points > 0 then
        CreateFlyPoint(points)
    end
    --print(enc(I2S(GPoint)))
    SaveResult(enc(I2S(GPoint))) --сохраняем очки каждый чих

    if not LockedState[1] then
        if GPoint >= PointForUnlock[1] then
            --and SongCompleteCount>=3
            BlzFrameSetTexture(IcoOfSongsLocked[1], "BTNsos", 0, true)
            CreateSelections(IcoOfSongsLocked[1], 5)
            LockedState[1] = true
            normal_sound("Sound\\Interface\\BattleNetDoorsStereo2")
        end

    end

    if not LockedState[2] then
        if GPoint >= PointForUnlock[2] then
            --and SongCompleteCount>=3
            BlzFrameSetTexture(IcoOfSongsLocked[2], "BTNzavod", 0, true)
            CreateSelections(IcoOfSongsLocked[2], 5)
            LockedState[2] = true
            normal_sound("Sound\\Interface\\BattleNetDoorsStereo2")
        end

    end
    if not LockedState[3] then
        if GPoint >= PointForUnlock[3] then
            --and SongCompleteCount >= 5
            BlzFrameSetTexture(IcoOfSongsLocked[3], "BTNhank", 0, true)
            LockedState[3] = true
            CreateSelections(IcoOfSongsLocked[3], 5)
            normal_sound("Sound\\Interface\\BattleNetDoorsStereo2")
        end
    end
    if not LockedState[4] then
        if GPoint >= PointForUnlock[4] then
            --and SongCompleteCount >= 2
            BlzFrameSetTexture(IcoOfSongsLocked[4], "BTNFresh", 0, true)
            LockedState[4] = true
            CreateSelections(IcoOfSongsLocked[4], 5)
            normal_sound("Sound\\Interface\\BattleNetDoorsStereo2")
        end
    end
    if not LockedState[5] then
        if GPoint >= PointForUnlock[5] then
            --and SongCompleteCount >= 4
            BlzFrameSetTexture(IcoOfSongsLocked[5], "BTNMilf", 0, true)
            LockedState[5] = true
            CreateSelections(IcoOfSongsLocked[5], 5)
            normal_sound("Sound\\Interface\\BattleNetDoorsStereo2")
        end
    end
    if not LockedState[6] then
        if GPoint >= PointForUnlock[6] then
            --and SongCompleteCount >= 4
            BlzFrameSetTexture(IcoOfSongsLocked[6], "BTNBear", 0, true)
            LockedState[6] = true
            CreateSelections(IcoOfSongsLocked[6], 5)
            normal_sound("Sound\\Interface\\BattleNetDoorsStereo2")
        end
    end
end

function CreateFlyPoint(descriptions)
    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
    local x, y = 0.5, 0.3
    BlzFrameSetParent(text, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetText(text, descriptions)
    BlzFrameSetScale(text, 4)
    BlzFrameSetAbsPoint(text, FRAMEPOINT_CENTER, x, y)
    local reverse = false
    --local hide = false
    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
        if not reverse then
            y = y + 0.002
        else
            y = y - 0.004
            x = x + 0.004
            BlzFrameSetAlpha(text, R2I(y * 102))
        end
        if y > 0.35 then
            reverse = true
        end

        BlzFrameSetAbsPoint(text, FRAMEPOINT_CENTER, x, y)
        if reverse and y <= 0.3 then
            --print("destroy")
            DestroyTimer(GetExpiredTimer())
            BlzDestroyFrame(text)
        end

    end)
end


---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bear.
--- DateTime: 31.10.2021 21:31
---
do
    local InitGlobalsOrigin = InitGlobals
    function InitGlobals()
        InitGlobalsOrigin()
        AllPreload()
        InitTrig_SyncLoadDone()
        TimerStart(CreateTimer(), 1, false, function()
            InitPreloadStart()
            DestroyTimer(GetExpiredTimer())
            --print(enc("AAAAA"))
        end)
    end
end

function AllPreload()
    StopSound(normal_sound("All"), true, false)
    StopSound(normal_sound("AllForce"), true, false)
    StopSound(normal_sound("zavodila"), true, false)
    StopSound(normal_sound("HankMP3"), true, false)
    StopSound(normal_sound("Fresh"), true, false)
    StopSound(normal_sound("Milf"), true, false)
    StopSound(normal_sound("Pritoptat"), true, false)
end

function InitPreloadStart()
    --print("Start preload tester")
    --PreloadGenClear()
    SavePath = "save\\fnfScore.txt"
    Preloader(SavePath) --в этот момент данные записываются в имя способности, для каждого игрока свои данные
    local s = BlzGetAbilityTooltip(FourCC('Agyv'), 0) --переменная S хранит асинхронные данные
    --print("AAAAAAA "..s)
    BlzSendSyncData("myprefix", s)
    local i = 0
    if LoadCode[i] then
        if tonumber(LoadedGold[i]) then
            -- код может быть числом, пока что
        else
            print("FirstGame", GetPlayerName(Player(i)))
        end

    end


end

LoadCode = {}

function InitTrig_SyncLoadDone ()
    local gg_trg_SyncLoadDone = CreateTrigger()
    for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
        BlzTriggerRegisterPlayerSyncEvent(gg_trg_SyncLoadDone, Player(i), "myprefix", false)
    end
    TriggerAddAction(gg_trg_SyncLoadDone, function()
        local prefix = BlzGetTriggerSyncPrefix()
        local value = BlzGetTriggerSyncData()
        local i = GetPlayerId(GetTriggerPlayer())
        --print("SyncData="..value)

        if prefix == "myprefix" then
            --print(value,dec(value))
            LoadCode[i] = dec(value)
            TimerStart(CreateTimer(), 2, false, function()
                --AddPoint(S2I(dec(value)))
            end)
        end


    end)
end

function SaveResult(SaveCode)
    Preload("\")\ncall BlzSetAbilityTooltip ('Agyv',\"" .. SaveCode .. "\",0)" .. "\n//")
    PreloadGenEnd(SavePath)
    PreloadGenClear()
end


function CreateJojoReference(delay, isVictory)
    --настройки
    local toBeContinued = "ToBeContinued" --путь к картинке ToBeContinued
    local endingSound = "endingSound" -- путь к мелодии
    --delay время задержки перед начало выезжания таблички
    -- isVictory  нужно ли объявить победу

    PlayThematicMusic(endingSound)

    TimerStart(CreateTimer(), delay, false, function()
        CreateContinuedAndMove(toBeContinued, 1, 0.1,isVictory)
        REFERENCE=true
        DestroyTimer(GetExpiredTimer())
    end)
end

function CreateContinuedAndMove(toBeContinued, x, y,isVictory)
    local tobe = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(tobe, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(tobe, toBeContinued, 0, true)
    BlzFrameSetSize(tobe, 0.4, 0.1)
    BlzFrameSetAbsPoint(tobe, FRAMEPOINT_TOP, x, y)
    --print("запушен референс")

    TimerStart(CreateTimer(), 1/64, true, function()
        x = x - 0.02
        if x <= 0.07 then
            --print("остановка")
            DestroyTimer(GetExpiredTimer())
            CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 99, "ReplaceableTextures\\CameraMasks\\White_mask.blp", 20.00, 20.00, 20.00, 20.00)
            if isVictory then
                CustomVictoryBJ(Player(0), true, false)
            end
            PauseGame(true)
        else
            BlzFrameSetAbsPoint(tobe, FRAMEPOINT_TOP, x, y)
        end
    end)
end

function CreateEnding(unit)
    local x,y=GetUnitX(unit),GetUnitY(unit)
    AddSpecialEffect("Units\\Demon\\Infernal\\InfernalBirth.mdl",x,y)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 23.11.2021 22:44
---
function PlayerSeeNoiseInRangeTimed(duration, x, y)
    CameraSetEQNoiseForPlayer(Player(0), 3)
    if x then
        DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\ImpaleTargetDust\\ImpaleTargetDust.mdl", x, y))
    end
    TimerStart(CreateTimer(), duration, false, function()
        CameraClearNoiseForPlayer(Player(0))
        DestroyTimer(GetExpiredTimer())
    end)

end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 21.11.2021 23:01
---
function SongCamera(data)
    if data <= 4 then
        --print("на артаса")
        SetUnitLookAt(GJaina,"bone_head",GEnemy,0,0,120)
        TimerStart(CreateTimer(), 0.1, false, function()
            PanCameraToTimed(GetUnitX(GEnemy), GetUnitY(GEnemy), 1)
            DestroyTimer(GetExpiredTimer())
        end)

    else
        --print("на пеона")
        SetUnitLookAt(GJaina,"bone_head",GPlayer,-120,0,120)
        PanCameraToTimed(GetUnitX(GPlayer), GetUnitY(GPlayer), 1)
    end
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 22.11.2021 1:46
---
function CreateSpaceForRestart()
    SpaceRegister()
    local NextPoint = 0.039
    local texture = "EmptySpace"
    local SelfFrame = BlzCreateFrameByType('GLUEBUTTON', 'FaceButton', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 'ScoreScreenTabButtonTemplate', 0)
    local buttonIconFrame = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', SelfFrame, '', 0)
    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", SelfFrame, "", 0)

    BlzFrameSetText(text, L("SPACE - перезапуск текущей песни","SPACE - restarting the current song"))
    BlzFrameSetSize(text, NextPoint * 7, 0.01)
    BlzFrameSetScale(text, 1)
    BlzFrameSetTextColor(text, BlzConvertColor(255, 0, 0, 0))

    BlzFrameSetPoint(text, FRAMEPOINT_CENTER, SelfFrame, FRAMEPOINT_CENTER, 0.05, 0.0)

    BlzFrameSetAllPoints(buttonIconFrame, SelfFrame)
    BlzFrameSetTexture(buttonIconFrame, texture, 0, true)
    BlzFrameSetSize(SelfFrame, NextPoint * 8, NextPoint)

    BlzFrameSetAbsPoint(SelfFrame, FRAMEPOINT_CENTER, 0.4, 0.01)
    --BlzFrameSetPoint(SelfFrame, FRAMEPOINT_LEFT, parent, FRAMEPOINT_LEFT, x, y)

    local ClickTrig = CreateTrigger()
    BlzTriggerRegisterFrameEvent(ClickTrig, SelfFrame, FRAMEEVENT_CONTROL_CLICK)
    TriggerAddAction(ClickTrig, function()

        BlzFrameSetEnable(BlzGetTriggerFrame(), false)
        BlzFrameSetEnable(BlzGetTriggerFrame(), true)
        StartNewSong(SONG)
    end)
end

function SpaceRegister()
    local thisTrig = CreateTrigger()
    BlzTriggerRegisterPlayerKeyEvent(thisTrig, Player(0), OSKEY_SPACE, 0, true)
    TriggerAddAction(thisTrig, function()
        StartNewSong(SONG)
    end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 27.10.2021 17:02
---

function CreateSquack(x,y)
    local image = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    local next = 1
    BlzFrameSetAlpha(image, 0)
    BlzFrameSetTexture(image, "Shvaks\\" .. next, 0, true)
    BlzFrameSetSize(image, 0.16, 0.08)
    BlzFrameSetParent(image, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, x,y)
    TimerStart(CreateTimer(), 1/32, true, function()
        next = next + 1
        BlzFrameSetTexture(image, "Shvaks\\" .. next, 0, true)
        if next == 5 then
            DestroyTimer(GetExpiredTimer())
            local alpha = 128
            TimerStart(CreateTimer(), 1 / 32, true, function()
                alpha = alpha - 30
                if alpha <= 0 then
                    DestroyTimer(GetExpiredTimer())
                    BlzDestroyFrame(image)
                else
                    BlzFrameSetAlpha(image, alpha)
                end
            end)
        end
    end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 04.11.2021 23:49
---
STREAK=1
function State4Key(y)
    --- print(y)

    if y < 0.54 and y > 0.53 then
        --print("sick")
        STREAK=STREAK+1
        CreateState("sick")
    else
        STREAK=1
    end
    if y < 0.52 and y > 0.50 then
        --print("good")
        CreateState("good")

    end
    if y < 0.57 and y > 0.55 then
        --print("bad")
        CreateState("good")
    end
     if y < 0.49  then
        --print("bad")
        CreateState("bad")
    end
      if  y > 0.58 then
        --print("bad")
        CreateState("bad")
    end


end

function CreateState(sate)
    local image = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(image, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(image, sate, 0, true)
    BlzFrameSetSize(image, 0.16, 0.08)
    BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, 0.4, 0.55)
    local alpha=255
    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
        alpha=alpha-5
        BlzFrameSetAlpha(image, R2I(alpha))
        if alpha <=15 then
            DestroyTimer(GetExpiredTimer())
            BlzDestroyFrame(image)
        end

    end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 27.11.2021 17:22
---
---
Taurens = {}
function InitTaurens()
    Taurens[1] = BlzCreateUnitWithSkin(Player(0), FourCC("o001"), -155.8 - 300, 31.8, 0.000, FourCC("o001"))
    Taurens[2] = BlzCreateUnitWithSkin(Player(0), FourCC("o001"), -135.0 - 300, -227.1, 0.000, FourCC("o001"))
    SetUnitMoveSpeed(Taurens[1], 100)
    SetUnitMoveSpeed(Taurens[2], 100)
end

function MoveTaurens()
    IssuePointOrder(Taurens[1], "move", -155.8, 31.8)
    IssuePointOrder(Taurens[2], "move", -135.0, -227.1)
end

function MoveTaurensBack()
    IssuePointOrder(Taurens[1], "move", -155.8 - 500, 31.8)
    IssuePointOrder(Taurens[2], "move", -135.0 - 500, -227.1)
end

function TaurenStomp()
    --local _,_,t=FindUnitOfType(FourCC("o001"))
    for i = 1, #Taurens do
        SetUnitAnimation(Taurens[i], "Attack Slam")
        QueueUnitAnimation(Taurens[i], "Stand")
    end
    TimerStart(CreateTimer(), 0.2, false, function()
        PlayerSeeNoiseInRangeTimed(0.2)

    end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 25.10.2021 18:15
---
toastyTable = {
    [1] = { "toasty", "toasty" },
    [2] = { "hatehorse", "hatehorse" },
    [3] = { "spypeon", "Units\\Orc\\Peon\\PeonWarcry1" },
    [4] = { "mush", "nya" }
}
function CreateToasty(index)
    if not index then
        index=#toastyTable
    end
    local r = GetRandomInt(1, index)
    local texture, sound = GetDataFromTable(toastyTable, r)
    CreateAndMoveToastyFrame(texture, sound)
end
function CreateAndMoveToastyFrame(texture, sound)
    local x, y = 1, 0.1
    local toasty = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(toasty, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(toasty, texture, 0, true)
    BlzFrameSetSize(toasty, 0.1, 0.1)
    BlzFrameSetAbsPoint(toasty, FRAMEPOINT_TOP, x, y)
    PlaySound(sound)
    --print("запушен референс")

    TimerStart(CreateTimer(), 1 / 32, true, function()
        x = x - 0.02
        if x <= 0.88 then
            --print("остановка")
            DestroyTimer(GetExpiredTimer())
            local showDuration = 0.5
            TimerStart(CreateTimer(), showDuration, false, function()
                Left2Right(toasty, x, y)
                DestroyTimer(GetExpiredTimer())
                --print("реверс")
            end)
        else
            BlzFrameSetAbsPoint(toasty, FRAMEPOINT_TOP, x, y)
        end
    end)
end

function Left2Right(frame, x, y)
    TimerStart(CreateTimer(), 1 / 32, true, function()
        x = x + 0.02
        if x >= 1 then
            --print("остановка")
            DestroyTimer(GetExpiredTimer())
            --print("Уничтожить фрейм")
        else
            BlzFrameSetAbsPoint(frame, FRAMEPOINT_TOP, x, y)
        end
    end)
end

function GetDataFromTable(table, index)
    if not table[index] then
        print("элемент в таблице не существует")
    else
        return table[index][1], table[index][2]
        --table.unpack(table[index])
    end
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 11.03.2020 22:30

function FindUnitOfType(id, flag, x, y)
    --flag nil - вся карта
    --flag any - радиус
    local unit = nil
    local e = nil
    local k = 0
    --print("ищем")
    local rg = {}
    if not flag then
        GroupEnumUnitsInRect(perebor, bj_mapInitialPlayableArea, nil)
        while true do
            e = FirstOfGroup(perebor)
            print(GetUnitName(e)," в переборе")
            if e == nil then
                break
            end
            if UnitAlive(e) and GetUnitTypeId(e) == id then
                print(e)
                k = k + 1
                rg[k] = e
                unit = e
            end
            GroupRemoveUnit(perebor, e)
        end
    else
        GroupEnumUnitsInRange(perebor, x, y, flag, nil)
        while true do
            e = FirstOfGroup(perebor)

            if e == nil then
                break
            end
            if UnitAlive(e) and GetUnitTypeId(e) == id then
                k = k + 1
                rg[k] = e
                unit = e
            end
            GroupRemoveUnit(perebor, e)
        end
    end

    if k > 1 then
        	--print("Ошибка получено "..k.." юнитов")
    end
    if k > 2 then
        unit = rg[GetRandomInt(1, #rg)]
    end
    if unit == nil then
        --	print("Не найдено живых юнитов данного типа")
    end
    return unit, k, rg
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 27.11.2021 20:36
---
function CreateArrow(speed, pozX, number, notes, music)
    GCurrentArrow = number
    --print(number,notes[number])
    local type = 0
    local isPlayer = false
    if pozX < 5 then
        type = pozX
    else
        type = pozX - 6
        isPlayer = true
    end
    local durations = 0

    local last = nil
    local swapScale = 0
    local arrow = {
        frame   = nil,
        type    = type,
        isline  = false,
        y       = 0,
        swaped  = false,
        line    = nil,
        removed = false,
        mistake = false, -- первый приоритет у обработки ошибки при наверном нажатии
        number  = number,
    }
    if number > 1 and number < #notes then
        durations = notes[number + 1] - notes[number] --попытка автопросчёта длительности звука
        if durations > 1 then
            arrow.isline = true
            last = CreateLine(speed, pozX, type, (durations - 0.5) / 0.5, arrow)
            arrow.line = last
            arrows.lineTime = durations - 0.5
        end
    end
    if number == #notes then
        --print(" последняя финальная нота должна быть длинной")
        if SONG == 1 then
            durations = 2
            arrow.isline = true
            last = CreateLine(speed, pozX, type, (durations - 0.5) / 0.5, arrow)
            arrow.line = last
            arrows.lineTime = durations - 0.5
        end
        if SONG == 2 then
            durations = 4
            arrow.isline = true
            last = CreateLine(speed, pozX, type, (durations - 0.5) / 0.5, arrow)
            arrow.line = last
            arrows.lineTime = durations - 0.5
        end
        TimerStart(CreateTimer(), 1.5, false, function()
            if not SongCompleted[SONG] then
                if SONG > 0 then
                    SongCompleted[SONG] = true
                    SongCompleteCount = SongCompleteCount + 1
                    --print("где разблокировка песни "..SONG+1)
                    --SONG=SONG+1 -- перелистывание на следую песню может сработать и на анлокнутую
                end
            end
            DestroyTimer(GetExpiredTimer())
        end)
    end
    local texture = arrows.standart[type]
    local x, y = arrows.x, 0
    local image = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    local step = arrows.step
    --local r = GetRandomInt(0, 3)
    local randomStep = (step * pozX) - x

    arrow.frame = image

    BlzFrameSetAlpha(image, 0)
    BlzFrameSetTexture(image, texture, 0, true)
    BlzFrameSetSize(image, 0.08, 0.08)
    BlzFrameSetParent(image, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, randomStep, y)

    arrows.allArrows[#arrows.allArrows + 1] = arrow

    if isPlayer then
        arrows.list[#arrows.list + 1] = arrow
    end

    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
        if arrow.removed then
            BlzFrameSetVisible(arrow.frame, false)
            DestroyTimer(GetExpiredTimer())
            BlzDestroyFrame(arrow.frame)
            return
        end
        y = y + speed
        arrow.y = y
        BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, randomStep, y)
        if y >= 0.4475 and not isMusicStart then
            if not isMusicStart then
                --создание музыки по первой стрелке
                local snd = normal_sound(music)
                musics[#musics + 1] = snd
                ETCPlay(true)
                isMusicStart = true
                --SetSoundPitch(snd,0.5)
                --GSound = CreateTimer()
                --GSDuration = GetSoundDuration(snd) / 1000
                --TimerStart(GSound, GetSoundDuration(snd), false, nil)
                --print(GSDuration, "длительность песни")
            end

        end
        if y >= 0.53 and pozX < 5 and arrow.swaped == false then
            PlayArthasAnimation(type, durations, number)
            --GCurrentArrow=number
            --print("Бот нажимает кнопку")
            if GetUnitTypeId(GEnemy) == FourCC("U000") then
                --print(10*durations)
                Damage(4 * durations, true)
                local tempDur = durations / 3
                TimerStart(CreateTimer(), 0.15, true, function()
                    tempDur = tempDur - 0.15
                    if tempDur <= 0 then
                        DestroyTimer(GetExpiredTimer())
                    end
                    EffectFromPoint2Point("GreenLife", GetUnitX(GPlayer), GetUnitY(GPlayer), GetUnitX(GEnemy), GetUnitY(GEnemy))
                end)
            end
            if GetUnitTypeId(GEnemy) == FourCC("O000") then
                -- print("bit ",number)
            end

            --print(TimerGetElapsed(GSound),GSDuration)
            --SetSoundPlayPosition(musics[#musics], R2I(TimerGetElapsed(GSound) * 1000))
            --Camera2Right = false
            --Camera2Left = true

            --print("камера на артасе",durations)
            if not arrow.line then
                BlzFrameSetTexture(arrows.up[pozX], arrows.lighted[type], 0, true)
                TimerStart(CreateTimer(), 0.1, false, function()
                    BlzFrameSetTexture(arrows.up[pozX], arrows.static[type], 0, true)
                    DestroyTimer(GetExpiredTimer())
                end)
                BlzFrameSetVisible(image, false)
                BlzDestroyFrame(image)
            else
                BlzFrameSetTexture(arrows.up[pozX], arrows.lighted[type], 0, true)
                BlzFrameSetVisible(image, false)
                TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
                    if arrow.line.all[#arrow.line.all].y >= 0.53 then
                        BlzFrameSetTexture(arrows.up[pozX], arrows.static[type], 0, true)
                        DestroyTimer(GetExpiredTimer())
                    end
                    for _, v in pairs(arrow.line.all) do
                        if v.y >= 0.53 then
                            BlzFrameSetVisible(v.frame, false)
                            BlzDestroyFrame(v.frame)
                        end
                    end
                end)
            end
            arrow.swaped = true
        end

        if y >= 0.65 then
            if not arrow.swaped and not arrow.mistake then
                local amount = 5
                if SONG == 1 then
                    amount = 5
                elseif SONG == 2 and number > 110 and number < 180 then
                    --print(number)
                    amount = 1
                elseif SONG == 5 then
                    amount = 1

                end

                Damage(amount)
                --print("Too late", arrow.y)

            end
            DestroyTimer(GetExpiredTimer())
            BlzFrameSetVisible(image, false)
            if isPlayer then
                table.remove(arrows.list, 1)
            end
        end
    end)
end
GCurrentArrow = 0
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 27.11.2021 20:40
---
function CreateLine(speed, pozX, type, count, arrow)
    local last = {}
    last.all = {}
    for i = 0, count * 4 - 1 do
        local texture = arrows.line[type]
        local x, y = arrows.x, -0.04 / 4 - 0.08 / 4 * i
        local image = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)

        local step = arrows.step
        local r = GetRandomInt(0, 3)
        local randomStep = (step * pozX) - x

        BlzFrameSetAlpha(image, 0)
        BlzFrameSetTexture(image, texture, 0, true)
        BlzFrameSetSize(image, 0.02, 0.08 / 4)
        BlzFrameSetParent(image, BlzGetFrameByName("ConsoleUIBackdrop", 0))
        BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, randomStep, y)
        last.all[#last.all + 1] = {
            frame = image,
            y     = y,
            step  = randomStep
        }

    end

    for k, v in pairs(last.all) do
        TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
            if arrow.removed then
                BlzFrameSetVisible(v.frame, false)
                BlzDestroyFrame(v.frame)
                DestroyTimer(GetExpiredTimer())
                return
            end
            v.y = v.y + speed
            BlzFrameSetAbsPoint(v.frame, FRAMEPOINT_CENTER, v.step, v.y)
            if v.y > 0.7 then
                DestroyTimer(GetExpiredTimer())
                BlzDestroyFrame(v.frame)
            end
        end)
    end
    return last

end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 02.12.2021 23:43
---
function StartFirstCinema()
    local table1 = {
        L("что в конце концов главное не то, что у тебя в кармане, а то что на душе", "in the end, the important thing is not what you have in your pocket, and the fact that his soul"),
        L("что у меня теперь нет ни счастья, ни несчастья", "now I have neither happiness nor misery"),
        L("что, мол, все это так, да не так.", "that, well, it's all so, so wrong"),
        L("ты знаешь, ты мне не друг, мне от тебя ничего не нужно, только не лезь в мою жизнь", "you know, you're not my friend, I want nothing from you, just stay out of my life"),
        L("что мол так, да так, ну просто супер, но в душе хотелось бы, что бы это было не так", "very well, Oh, well, just super, but in my heart I wish it wasn't so"),
        L("что ты хоть и красивый, но на фиг не нужен. А он мне и говорит, а зачем я тебе нужен? В итоге он поехал домой, а я остался с кучей цветов, шарами и огромным букетом из 101 розы", "what are you, though beautiful, but not needed in Fig. And he says to me, why do you need me? As a result, he went home, and I was left with a bunch of flowers, balloons and a huge bouquet of 101 roses"),
        L("у нет, так не пойдет!", "no, it won't do"),
        L("сходи в город, найди себе жену, чтобы в хозяйстве была помощница...", "go to the city, find yourself a wife so that there is an assistant in the household..."),
        L("вот ты говоришь, что, мол, счастье — это когда ничего не болит...", "here you say that, they say, happiness is when nothing hurts..."),
    }
    local table2 = {
        L("А ты как всегда - на веселе", "And you, as always, are tipsy"),
        L("Эти твои шуточки", "These jokes of yours"),
        L("Остришь, как всегда", "You're making jokes, as always"),

    }

    local NamePeon = L("Пеонетти", "Peonetty")
    local NameJaina = L("Джайна", "Jaina")
    local NamePapirus = L("Папирус", "Papyrus")
    local NameArthas = L("Артас", "Arthas")

    SetCameraBoundsToRectForPlayerBJ(Player(0), bj_mapInitialPlayableArea)
    HideGameUnits(false)
    CreateFakeUnits()

    ClearMapMusicBJ()
    PlayMusicBJ("LuvSeemee")
    SetMusicVolumeBJ(15)


    --CinematicModeBJ(true, GetPlayersAll()) -- перенёс в инит
    CameraSetupApplyForPlayer(false, gg_cam_FirstCinema, Player(0), 1.00)
    SetCameraTargetControllerNoZForPlayer(Player(0), FakePeon, 0, 0, true)

    TimerStart(CreateTimer(), 2, false, function()

        local gg_trg_ESC = CreateTrigger()
        TriggerRegisterPlayerEventEndCinematic(gg_trg_ESC, Player(0))
        TriggerAddAction(gg_trg_ESC, function()
            if not GameISStarted then
                StartGame()
            end
            GameISStarted = true
            DisableTrigger(GetTriggeringTrigger())
        end)

        if GameISStarted then
            return
        end
        CinematicFadeBJ(bj_CINEFADETYPE_FADEIN, 7, "ReplaceableTextures\\CameraMasks\\Black_mask.blp", 0, 0, 0, 0.00)
        math.randomseed(123)
        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("o002"), NamePeon, GetRectCenter(GetPlayableMapRect()), nil, L("И тут я ему и говорю, ", "And then I tell him, ") .. table1[GetRandomInt(1, #table1)], bj_TIMETYPE_ADD, 0, false)

        TimerStart(CreateTimer(), 8, false, function()
            if GameISStarted then
                return
            end
            TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("Hjai"), NameJaina, GetRectCenter(GetPlayableMapRect()), nil, table2[GetRandomInt(1, #table2)], bj_TIMETYPE_ADD, 0, false)
            TimerStart(CreateTimer(), 4, false, function()
                if GameISStarted then
                    return
                end
                TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("Hjai"), NameJaina, GetRectCenter(GetPlayableMapRect()), nil, L("Но скажи, а мы скоро уже туда придём, я, кажется, уже натерла ножки...", "But tell me, and we'll be there soon, I think I've already rubbed my legs..."), bj_TIMETYPE_ADD, 0, false)
                TimerStart(CreateTimer(), 6, false, function()
                    if GameISStarted then
                        return
                    end
                    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("o002"), NamePeon, GetRectCenter(GetPlayableMapRect()), nil, L("Я не просил тебя идти со мной, ты можешь пойти назад в любой момент", "I didn't ask you to come with me, you can go back at any time"), bj_TIMETYPE_ADD, 0, false)
                    TimerStart(CreateTimer(), 6, false, function()
                        if GameISStarted then
                            return
                        end
                        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("Hjai"), NameJaina, GetRectCenter(GetPlayableMapRect()), nil, L("Какой же ты иногда грубый мужлан, но я чувсвую, что это мой долг - поддержать тебя, ведь ты всё таки мой...", "What a rude bumpkin you are sometimes, but I feel that it is my duty to support you, because you are still my..."), bj_TIMETYPE_ADD, 0, false)
                        TimerStart(CreateTimer(), 6, false, function()
                            if GameISStarted then
                                return
                            end
                            TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("o002"), NamePeon, GetRectCenter(GetPlayableMapRect()), nil, L("О, мы уже пришли, посмотри, это же Папирус. Привет, Папирус!", "Oh, we've already come, look, it's Papyrus. Hello, Papyrus!"), bj_TIMETYPE_ADD, 0, false)
                            TimerStart(CreateTimer(), 3, false, function()
                                if GameISStarted then
                                    return
                                end
                                TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("Hjai"), NameJaina, GetRectCenter(GetPlayableMapRect()), nil, L("Папирус, пойдёшь с нами?", "Papyrus, will you come with us?"), bj_TIMETYPE_ADD, 0, false)
                                BlzPauseUnitEx(FakeJaina, true)
                                TimerStart(CreateTimer(), 3, false, function()
                                    if GameISStarted then
                                        return
                                    end
                                    BlzPauseUnitEx(FakeJaina, false)
                                    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("uske"), NamePapirus, GetRectCenter(GetPlayableMapRect()), nil, L("Оу, как приятно, что позвали, но я в другой раз, удачи вам", "Oh, how nice to be called, but I'll do it another time, good luck to you"), bj_TIMETYPE_ADD, 0, false)
                                    TimerStart(CreateTimer(), 8, false, function()
                                        if GameISStarted then
                                            return
                                        end
                                        SetUnitLookAt(FakeJaina, "bone_head", FakeArthas, 0, 0, 120)
                                        SetUnitLookAt(FakePeon, "bone_head", FakeArthas, 0, 0, 120)
                                        TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("H000"), NameArthas, GetRectCenter(GetPlayableMapRect()), nil, L("Посмотрите на него, явился, АХАХАХХ, и ещё подружку с собой взял", "Look at him, he showed up, AHAHAHH, and he also took his girlfriend with him"), bj_TIMETYPE_ADD, 0, false)
                                        TimerStart(CreateTimer(), 6, false, function()
                                            if GameISStarted then
                                                return
                                            end
                                            TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("H000"), NameArthas, GetRectCenter(GetPlayableMapRect()), nil, L("Как же ты ничтожен, жалкий батрак", "How insignificant you are, you miserable peon"), bj_TIMETYPE_ADD, 0, false)
                                            TimerStart(CreateTimer(), 6, false, function()
                                                if GameISStarted then
                                                    return
                                                end
                                                SetUnitAnimation(FakePeon, "Stand Ready")
                                                SetUnitAnimationByIndex(FakeJaina, 31)
                                                TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("o002"), NamePeon, GetRectCenter(GetPlayableMapRect()), nil, L("И это говорит мне тот, кто пронёс оружие на музыкальную битву?", "And this is what the one who brought the weapon to the musical battle tells me?"), bj_TIMETYPE_ADD, 0, false)
                                                TimerStart(CreateTimer(), 6, false, function()
                                                    if GameISStarted then
                                                        return
                                                    end
                                                    TransmissionFromUnitTypeWithNameBJ(GetPlayersAll(), Player(0), FourCC("H000"), NameArthas, GetRectCenter(GetPlayableMapRect()), nil, L("Ну всё, ты сам напросился!!!", "Well, that's it, you asked for it!!!"), bj_TIMETYPE_ADD, 0, false)
                                                    TimerStart(CreateTimer(), 3.5, false, function()
                                                        if GameISStarted then
                                                            return
                                                        end
                                                        StartGame()
                                                    end)
                                                end)
                                            end)
                                        end)
                                    end)
                                end)
                            end)
                        end)
                    end)
                end)
            end)
        end)
    end)

end

function HideGameUnits(state)
    ShowUnit(GJaina, state)
    ShowUnit(GPlayer, state)
    ShowUnit(GEnemy, state)
end

function CreateFakeUnits()
    local x, y = 2460, 0
    local xEnd, yEnd = 100, 0

    FakeJaina = CreateUnit(Player(0), FourCC("Hjai"), x + 80, y, 0)
    FakePeon = CreateUnit(Player(0), FourCC("opeo"), x, y, 0)
    FakeArthas = CreateUnit(Player(0), FourCC("Hart"), xEnd - 200, yEnd, 0)

    AddUnitAnimationProperties(FakeJaina, "cinematic", true)
    AddUnitAnimationProperties(FakePeon, "cinematic", true)
    SetUnitMoveSpeed(FakeJaina, 50)
    SetUnitMoveSpeed(FakePeon, 50)
    IssuePointOrder(FakeJaina, "move", xEnd, yEnd)
    IssuePointOrder(FakePeon, "move", xEnd, MoveY(yEnd, 30, 270))
end

function HideFakePlayer()
    ShowUnit(FakeJaina, false)
    ShowUnit(FakePeon, false)
    ShowUnit(FakeArthas, false)

end

GameISStarted = false
function StartGame()
    --print("Выворт исходной камеры")
    GameISStarted = true
    ClearMapMusicBJ()
    StopMusic(true)
    CinematicModeBJ(false, GetPlayersAll())
    CameraSetupApplyForPlayer(false, gg_cam_Camera_001, Player(0), 1.00)
    SetCameraBoundsToRectForPlayerBJ(Player(0), gg_rct_Region_000)
    HideFakePlayer()
    MUDA = false
    ready = false
    StarAllSound(1)
    HideGameUnits(true)
    HideEverything()
    ReturnFPS()
    MenuFrame()
    MUDA = false
    CreatePointInterFace()
    CreateGameSpeedIndicator()
    CreateSongMenus()
    CreateMissCounter()
    GifCat = CreateAndPlayGif(-0.092, 0.08, "gif\\CatGif\\frame_", 0.08, 157, false, 1 / 24, 1)
    ShuffleIcons(true)
    CreateHPBar("20")
    CreateHPBar("06")
    CreateHPBar("00")
    CreateVSIcons()
    ready = true
    AddPoint(S2I(LoadCode[0]))
    CreateSpaceForRestart()
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 05.12.2021 22:33

ETCUnits = {}
perebor = CreateGroup()
function InitEtcGroup()
    local id = { FourCC("h001"), FourCC("h002"), FourCC("h003"), FourCC("h004"), FourCC("h005"), FourCC("h006") } ---01-06
    local e = nil


    GroupEnumUnitsInRect(perebor, bj_mapInitialPlayableArea, nil)

    --GroupEnumUnitsInRange(perebor, 0, 0, 8000, nil)

    while true do
        e = FirstOfGroup(perebor)
        --print(GetUnitName(e), " в переборе")
        if e == nil then
            --print("перебор группы завершен")
            break
        end
        if UnitAlive(e) then
            --print(GetUnitName(e)," в переборе")
            if GetAnyInTable(id, GetUnitTypeId(e)) then
                -- print(GetUnitName(e),"добавлен в etc")
                table.insert(ETCUnits, e)
            end
        end
        GroupRemoveUnit(perebor, e)
        --print("remove")
    end
end

function GetAnyInTable(sort, element)
    local is, any = nil, nil
    for i = 1, #sort do
        if sort[i] == element then
            --print("Элемент", element, "содержится в этой таблице")
            is = true
            --table.remove(sort, FinPosInTable(sort, element))
        end
    end
    any = sort[GetRandomInt(1, #sort)]
    --print("вернул",any)
    return is, any
end

function ETCPlay(state)
    for i = 1, #ETCUnits do
        if state then
            SetUnitAnimation(ETCUnits[i], "Spell")
        else
            SetUnitAnimation(ETCUnits[i], "Stand")
        end
    end
end

function FinPosInTable(t, f)
    local pos = 0
    for i = 1, #t do
        if t[i] == f then
            pos = i
            return pos
        end
    end
    --print(pos)
    return pos
end
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
            60,60.5,61.5,62,
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
BoPeeBoNormal={
    0,0.6,2.4,3,4.8,5.4,6,7.2,7.8,8.4,9.6,10.2,10.5,10.8,12,12.6,12.9,13.2,14.4,14.7,15,15.3,15.6,16.8,17.1,17.4,17.7,18,19.2,19.5,19.8,21.6,21.9,22.2,24,24.3,24.6,26.4,26.7,27,28.8,29.1,29.4,31.2,31.5,31.8,33.3,33.6,33.9,34.5,34.8,35.7,36,36.3,36.9,37.2,38.4,39,39.6,40.8,41.4,42,43.2,43.8,44.4,44.55,44.7,45,45.6,46.2,46.8,46.95,47.1,47.4,48,48.6,49.2,50.4,51,51.6,52.8,55.2,57.6,57.9,58.2,60,60.3,60.6,62.1,62.4,62.7,63.3,63.6,64.5,64.8,65.1,65.7,66,67.2,67.5,67.8,68.1,68.4,69.6,69.9,70.2,70.5,70.8,71.7,72,72.3,72.9,73.2,74.1,74.4,74.7,75.3,75.6,
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
            2,4,2,2,2,4,
            8,10,8,8,8,10,
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
--- DateTime: 07.11.2021 3:56
---
Fresh = {--167
    0,
    16.5, 17, 18,
    20.5, 21, 22,
    24.5, 25, 25.5, 26,
    28.5, 29, 29.5, 30,
    32.5, 33, 33.5, 34,
    36.5, 37, 37.5, 38, 39,
    --подписку
    40, 40.5, 41.5, 42, 42.5, 43.5,
    44, 44.5, 45.5, 46, 46.5, 47.5,
    --та та тата тата
    48, 49, 50, 50.5, 51,
    52, 52.5, 53, 53.5, 54, 54.5, 55,
    56, 57, 58, 58.5, 59,
    60, 60.5, 61, 61.5, 62, 62.5, 63,
    -- переход
    65, 65.5, 66, 66.5, 67, 67.5,
    68.5, 69, 69.5, 70, 71,
    73, 73.5, 74, 74.5, 75, 75.5,
    76.5, 77, 77.5, 78, 79,
    --80
    80.5, 81, 82, 83, 83.5,
    84.5, 85, 86, 87, 87.5,
    88.5, 89, 89.5, 90, 91.5,
    92.5, 93, 93.5, 94, 95.5,
    96.5, 97, 97.5, 98,
    100.5, 101, 101.5, 102, 103,
    -- ти та подписку та
    104, 104.5, 105.5, 106, 106.5, 107.5,
    108, 108.5, 109.5, 110, 110.5, 111.5,
    --та та тата тата
    112, 113, 114, 114.5, 115,
    116, 116.5, 117, 117.5, 118, 118.5, 119,
    120, 121, 122, 122.5, 123,
    124, 124.5, 125, 125.5, 126, 126.5, 127,
    --финалочка
    129, 129.5, 130, 130.5, 131, 131.5,
    132.5, 133, 133.5, 134, 135,
    137, 137.5, 138, 138.5, 139, 139.5,
    140.5, 141, 141.5, 142, 143,
}

FreshPos = { --167
    1, 1, 4, 4, 1, 1, 4, 1,
    7, 7, 10, 10, 7, 7, 10, 7,
    1, 1, 4, 4, 1, 1, 4, 1,
    7, 7, 10, 10, 7, 7, 10, 7,
    1, 2, 3,
    7, 8, 9,
    4, 3, 2, 1,
    10, 9, 8, 7,
    3, 2, 3, 1,
    9, 8, 9, 7, 8,
    --подписку
    4, 3, 3, 2, 1, 2,
    10, 9, 9, 8, 7, 8,
    --та та тата тата
    1, 4, 1, 1, 4,
    1, 1, 4, 1, 2, 3, 4,
    7, 10, 7, 7, 10,
    7, 7, 10, 7, 8, 9, 10,
    --финалочка
    2, 1, 2, 1, 2, 3, 4, 3, 2, 3, 2, -- 11
    8, 7, 8, 7, 8, 9, 10, 9, 8, 9, 8,
    --80
    2, 1, 2, 2, 2,
    8, 7, 8, 8, 8,
    4, 3, 2, 1, 1,
    10, 9, 8, 7, 7,
    --96
    2, 1, 2, 1,
    8, 7, 8, 7, 8,
    --подписку
    4, 3, 3, 2, 1, 2,
    10, 9, 9, 8, 7, 8,
    --та та тата тата
    1, 4, 1, 1, 4,
    1, 1, 4, 1, 2, 3, 4,
    7, 10, 7, 7, 10,
    7, 7, 10, 7, 8, 9, 10,
    --финалочка
    2, 1, 2, 1, 2, 3, 4, 3, 2, 3, 2,
    8, 7, 8, 7, 8, 9, 10, 9, 8, 9, 8,
    --
    1, 1, 4, 4, 1, 1, 4, 1,
    7, 7, 10, 10, 7, 7, 10, 7,
    1, 1, 4, 4, 1, 1, 4, 1,
    7, 7, 10, 10, 7, 7, 10,

}

FreshBit = {--167
    0, 0.5, 1, 2, 2.5, 2.75, 3, 3.5,
    4, 4.5, 5, 6, 6.5, 6.75, 7, 7.5,
    8, 8.5, 9, 10, 10.5, 10.75, 11, 11.5,
    12, 12.5, 13, 14, 14.5, 14.75, 15, 15.5,
    16.5, 17, 18,
    20.5, 21, 22,
    24.5, 25, 25.5, 26,
    28.5, 29, 29.5, 30,
    32.5, 33, 33.5, 34,
    36.5, 37, 37.5, 38, 39,
    --подписку
    40, 40.5, 41.5, 42, 42.5, 43.5,
    44, 44.5, 45.5, 46, 46.5, 47.5,
    --та та тата тата
    48, 49, 50, 50.5, 51,
    52, 52.5, 53, 53.5, 54, 54.5, 55,
    56, 57, 58, 58.5, 59,
    60, 60.5, 61, 61.5, 62, 62.5, 63,
    -- переход
    65, 65.5, 66, 66.5, 67, 67.5,
    68.5, 69, 69.5, 70, 71,
    73, 73.5, 74, 74.5, 75, 75.5,
    76.5, 77, 77.5, 78, 79,
    --80
    80.5, 81, 82, 83, 83.5,
    84.5, 85, 86, 87, 87.5,
    88.5, 89, 89.5, 90, 91.5,
    92.5, 93, 93.5, 94, 95.5,
    96.5, 97, 97.5, 98,
    100.5, 101, 101.5, 102, 103,
    -- ти та подписку та
    104, 104.5, 105.5, 106, 106.5, 107.5,
    108, 108.5, 109.5, 110, 110.5, 111.5,
    --та та тата тата
    112, 113, 114, 114.5, 115,
    116, 116.5, 117, 117.5, 118, 118.5, 119,
    120, 121, 122, 122.5, 123,
    124, 124.5, 125, 125.5, 126, 126.5, 127,
    --финалочка
    129, 129.5, 130, 130.5, 131, 131.5,
    132.5, 133, 133.5, 134, 135,
    137, 137.5, 138, 138.5, 139, 139.5,
    140.5, 141, 141.5, 142, 143,
    --0, 0.5, 1, 2, 2.5, 2.75, 3, 3.5,
    144,144.5,145,146,146.5,146.75,147,147.5,
    148,148.5,149,150,150.5,150.75,151,151.5,
    152,152.5,153,154,154.5,154.75,155,155.5,
    156,156.5,157,158,158.5,158.75,159,
}

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 04.11.2021 16:53
---
--Это не настоящие ноты ханка, у меня нет хенка в целом  настоящие
HankTable = {
    4, 4.25, 4.5, 4.75, 5, 5.25, 5.5, 5.75, 6, 6.25, 6.5, 6.75, 7, 7.25, 7.5, 7.75, 8, 8.25, 8.5, 8.75, 9, 9.25, 9.5, 9.75, 10, 10.25, 10.5, 10.75, 11, 11.25, 11.5, 11.75, 12, 12.25, 12.5, 12.75, 13, 13.25, 13.5, 13.75, 14, 14.25, 14.5, 14.75, 15, 15.25, 15.5, 15.75, 16, 16.25, 16.5, 16.75, 17, 17.25, 17.5, 17.75, 18, 18.5, 19, 19.5,
}

HankTablePOS = {
    2, 1, 2, 3, 4, 1, 2, 3, 4, 3, 4, 3, 4, 3, 2, 1,
    2, 1, 2, 3, 4, 3, 2, 1, 1, 4, 1, 4, 1, 4, 1, 3,
    2, 1, 2, 3, 4, 3, 2, 1, 2, 1, 2, 3, 4, 3, 4, 3,
    4, 3, 2, 3, 4, 3, 2, 1, 2, 3, 4, 1,
}
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bear.
--- DateTime: 07.11.2021 15:56
---
Milf = { --587
    --вступление бот 8+6+8+7
    0, 1, 2, 2.25, 2.5, 2.75, 3, 3.5,
    4.5, 5.5, 6, 6.5, 7, 7.5,
    8, 9, 10, 10.25, 10.5, 10.75, 11, 11.5,
    12.5, 13.5, 14, 14.5, 15, 15.25, 15.5,
    -- вступление игрок
    16, 17, 18, 18.25, 18.5, 18.75, 19, 19.5,
    20.5, 21.5, 22, 22.5, 23, 23.5,
    24, 25, 26, 26.25, 26.5, 26.75, 27, 27.5,
    28.5, 29.5, 30, 30.5, 31, 31.25, 31.5,
    --мелодия с длинной ноты 3+4+5+8
    32, 35, 35.5,
    37.25, 37.5, 38.5, 39.5,
    40.5, 40.75, 41, 42, 43,
    44, 44.5, 45, 45.5, 46, 46.5, 47, 47.5,
    --игрок
    48, 51, 51.5,
    53.25, 53.5, 54.5, 55.5,
    56.5, 56.75, 57, 58, 59,
    60, 60.5, 61, 61.5, 62, 62.5, 63, 63.5,
    --66 тайминг 17 такт
    64.5, 64.75, 65, 65.5, 66, 66.5, 67.5,
    68.25, 68.75, 69.25, 69.75, 70.25, 71.5,
    72.25, 72.5, 72.75, 73, 73.75, 74, 74.75, 75.25,
    76.5, 77, 77.5, 78, 78.5, 79, 79.5,
    --игрок
    80.5, 80.75, 81, 81.5, 82, 82.5, 83.5,
    84.25, 84.75, 85.25, 85.75, 86.25, 87.5, 88.25, 88.5, 88.75, 89, 89.75, 90, 90.75, 91.25, 92.5, 93, 93.5, 94, 94.5, 95, 95.5,
    --слоу момент 96
    96, 99, 99.5,
    100, 101, 102, 103, 103.25, 103.5,
    104, 104.5, 105, 105.5, 106, 106.5, 107, 107.5,
    108, 108.5, 109, 109.5, 110, 111,
    --игрок 112
    112, 115, 115.5, 116, 117, 118, 119, 119.25, 119.5, 120, 120.5, 121, 121.5, 122, 122.5, 123, 123.5, 124, 124.5, 125, 125.5, 126, 127,
    -- мелодия с длинной ноты - повтор
    128, 131, 131.5, 133.25, 133.5, 134.5, 135.5, 136.5, 136.75, 137, 138, 139, 140, 140.5, 141, 141.5, 142, 142.5, 143, 143.5,
    144, 147, 147.5, 149.25, 149.5, 150.5, 151.5, 152.5, 152.75, 153, 154, 155, 156, 156.5, 157, 157.5, 158, 158.5, 159, 159.5,
    -- триолли
    160, 160.5, 161, 161.5, 162, 162.5, 163, 163.25, 163.5,
    164, 164.5, 165, 165.5, 166, 166.5, 167, 167.25, 167.5,
    168, 168.25, 168.5, 169, 169.25, 169.5, 170, 170.25, 170.5, 171, 171.25, 171.5,
    172, 172.25, 172.5, 173, 173.25, 173.5, 174, 174.25, 174.5, 175, 175.25, 175.5,
    --триолли игрок
    176, 176.5, 177, 177.5, 178, 178.5, 179, 179.25, 179.5, 180, 180.5, 181, 181.5, 182, 182.5, 183, 183.25, 183.5, 184, 184.25, 184.5, 185, 185.25, 185.5, 186, 186.25, 186.5, 187, 187.25, 187.5, 188, 188.25, 188.5, 189, 189.25, 189.5, 190, 190.25, 190.5, 191, 191.25, 191.5,
    -- повтор 64 сложного момента
    192.5, 192.75, 193, 193.5, 194, 194.5, 195.5,
    196.25, 196.75, 197.25, 197.75, 198.25, 199.5,
    200.25, 200.5, 200.75, 201, 201.75, 202, 202.75, 203.25,
    204, 204.5, 205, 205.5, 206, 206.25, 206.5, 207,
    -- а у игрока тоже самое но в конце другое
    208.5, 208.75, 209, 209.5, 210, 210.5, 211.5,
    212.25, 212.75, 213.25, 213.75, 214.25, 215.5,
    216.25, 216.5, 216.75, 217, 217.75, 218, 218.75, 219.25,
    220, 220.5, 221, 221.5, 222,
    --одновременный момент, но будет игрть только бот
    225, 225.5, 226, 227,
    228, 229, 229.25, 229.75, 230, 230.5, 231, 231.5,
    232, 232.5, 233, 233.5, 234, 234.5, 235, 235.5,
    -- соло игрок
    236, 237, 238,
    241, 241.5, 242, 243,
    --начало 5 страницы
    244, 245, 245.25, 245.75, 246, 246.5, 247, 247.5,
    248, 248.5, 249, 249.5, 250, 250.5, 251, 251.5,
    --крещендо закончилось
    252, 252.5, 253, 254, 254.5, 255, 255.5,
    -- след 8 тактов выполняет только игрок
    256, 257, 258, 258.25, 258.5, 259, 259.5,
    260.5, 261.5, 262.5, 262.75, 263,
    264, 265, 265, 265.25, 265.5, 270, 270.5,
    268, 268.5, 269, 269.5, 270, 270.5, 270.75, 271, 271.5,
    -- двойные ноты
    272, 273, 274, 274.5, 274.75, 275, 275.5,
    276.5, 277.5, 278.5, 278.75, 279,
    280, 281, 282, 282.5, 282.75, 283, 283.5,
    284, 284.5, 285, 285.5, 286, 286.5, 286.75, 287, 287.5,
    --двойной повтор
    288, 291, 291.5,
    293.25, 293.5, 294.5, 295.5,
    296.5, 296.75, 297, 298, 299,
    300, 300.5, 301, 301.5, 302, 302.5, 303, 303.5,
    --игрок
    304, 307, 307.5,
    309.25, 309.5, 310.5, 311.5,
    312.5, 312.75, 313, 314, 315,
    316, 316.5, 317, 317.5, 318, 318.5, 319, 319.5,
    -- финал бот 7+7+8+8
    320, 320.25, 320.5, 321, 321.5, 322.25, 323,
    324, 324.5, 325, 325.5, 326.5, 327, 327.5,
    328, 328.25, 328.5, 329.25, 329.75, 330.5, 331, 331.5,
    332, 332.5, 333, 333.5, 334, 334.25, 334.5, 335,
    --финал человек с ошибками ибо копия предыдущего
    336, 336.25, 336.5, 337, 337.5, 338.25, 339,
    340, 340.5, 341, 341.5, 342.5, 343, 343.5,
    344, 344.25, 344.5, 345.25, 345.75, 346.5, 347, 347.5,
    348, 348.5, 349, 349.5, 350, 350.25, 350.5, 351,
    --конец
    352,
}

MilfPos = { --587
    1, 1, 1, 2, 3, 4, 4, 1,
    1, 1, 3, 1, 2, 1,
    1, 1, 1, 2, 3, 4, 4, 1,
    2, 2, 3, 2, 4, 2, 1,
    --16
    7, 7, 7, 8, 9, 10, 10, 7,
    7, 7, 9, 7, 8, 7,
    7, 7, 7, 8, 9, 10, 10, 7,
    8, 8, 9, 8, 10, 8, 7,
    --32
    1, 2, 3,
    4, 3, 2, 1,
    4, 3, 2, 3, 1,
    3, 2, 1, 2, 3, 4, 3, 2,
    --48
    7, 8, 9,
    10, 9, 8, 7,
    10, 9, 8, 9, 7,
    9, 8, 7, 8, 9, 10, 9, 8,
    --64
    1, 2, 3, 1, 4, 3, 2,
    2, 1, 2, 3, 3, 1,
    1, 2, 3, 4, 1, 3, 3, 4,
    3, 2, 1, 4, 3, 3, 2,
    --80
    7, 8, 10, 7, 10, 9, 8,
    8, 7, 8, 9, 9, 7,
    7, 8, 9, 10, 7, 9, 9, 10,
    9, 8, 7, 10, 9, 9, 8,
    --96
    1, 2, 3,
    4, 3, 2, 3, 2, 1,
    4, 3, 2, 4, 3, 2, 3, 2,
    1, 4, 3, 2, 3, 2,
    --112
    7, 8, 9,
    10, 9, 8, 9, 8, 7,
    10, 9, 8, 10, 9, 8, 9, 8,
    7, 10, 9, 8, 9, 8,
    --128 повтор--32
    1, 2, 3,
    4, 3, 2, 1,
    4, 3, 2, 3, 1,
    3, 2, 1, 2, 3, 4, 3, 2,
    7, 8, 9,
    10, 9, 8, 7,
    10, 9, 8, 9, 7,
    9, 8, 7, 8, 9, 10, 9, 8,
    --160 триолли
    3, 2, 1, 3, 2, 1, 3, 2, 1,
    3, 2, 1, 3, 2, 1, 3, 2, 1,
    3, 2, 1, 3, 2, 1, 3, 2, 1, 3, 2, 1,
    3, 2, 1, 3, 2, 1, 3, 2, 1, 3, 2, 1,
    --176
    9, 8, 7, 9, 8, 7, 9, 8, 7,
    9, 8, 7, 9, 8, 7, 9, 8, 7,
    9, 8, 7, 9, 8, 7, 9, 8, 7, 9, 8, 7,
    9, 8, 7, 9, 8, 7, 9, 8, 7, 9, 8, 7,
    --192
    1, 2, 3, 1, 4, 3, 2,
    2, 1, 2, 3, 3, 1,
    1, 2, 3, 4, 1, 3, 3, 4,
    4, 2, 3, 2, 4, 3, 2, 1,
    --208 игрок
    7, 8, 9, 7, 10, 9, 8,
    8, 7, 8, 9, 9, 7,
    7, 8, 9, 10, 7, 9, 9, 10,
    8, 9, 8, 7, 10,
    --одноврменный момент который играет бот -225
    1, 2, 3, 2,
    1, 3, 2, 1, 4, 3, 2, 3,
    4, 3, 4, 3, 2, 1, 3, 2,
    -- 236
    8, 7, 10,
    7, 8, 9, 8,
    9, 10, 9, 8, 7, 9, 8, 7, 8,
    10, 9, 10, 9, 8, 9, 8, 7,
    --252 одновременно нажимаем после крещендо
    9, 9, 9, 10, 10, 10, 10,
    --256 игрок
    7, 7, 7, 8, 9, 10, 7,
    7, 7, 7, 8, 10,
    7, 7, 7, 8, 9, 10, 10,
    8, 7, 8, 9, 10, 9, 7, 8, 7,
    --и двойные в идеале бы задвоить ноты
    7, 7, 7, 8, 9, 10, 7,
    7, 7, 7, 8, 10,
    7, 7, 7, 8, 9, 10, 10,
    8, 7, 8, 9, 10, 9, 7, 8, 7,
    --288 повторо от --96
    1, 2, 3,
    4, 3, 2, 1,
    4, 3, 2, 4, 2,
    4, 3, 2, 1, 2, 3, 2, 1,
    --304 повтор игроком 112
    7, 8, 9,
    10, 9, 8, 7,
    10, 9, 8, 10, 8,
    10, 9, 8, 7, 8, 9, 8, 7,
    --финлочка бот + игрок
    1, 2, 3, 1, 4, 4, 3,
    3, 2, 3, 4, 4, 1, 1,
    2, 3, 4, 1, 3, 3, 4, 3,
    4, 2, 3, 2, 4, 3, 2, 1,
    --
    7, 8, 9, 7, 10, 10, 9,
    9, 8, 9, 10, 10, 7, 7,
    8, 9, 10, 7, 9, 9, 10, 9,
    10, 8, 9, 8, 10, 9, 8, 7,
    -- последняя нота
    8,

}
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 30.11.2021 1:07
---
PritoptatShort = {
    0, 2, 3,
    4, 5, 6, 7,
    8,
    12,
    18, 19,
    20, 21, 22, 23,
    24,
    28,
    34, 35,
    36, 37, 38, 39,
    40,
    46, 47,
    48, 50, 51,
    52, 53, 54, 55,
    56,
    --Ать Ать
    64, 66,
    68, 70,
    72, 73, 74, 75,
    76, 77, 77.5, 78, 78.5, 79, 79.5,
    --Драмнбейс
    80, 81, 82, 83,
    84, 84.5, 85, 85.5, 86, 86.5, 87, 87.5,
    88, 89, 90, 91,
    92, 92.5, 93, 93.5, 94, 94.5, 95, 95.5,
    96, 97, 98, 99,
    100, 100.5, 101, 101.5, 102, 102.5, 103, 103.5,
    104, 105, 106, 107,
    108, 108.5, 109, 109.5, 110,

    112, 113, 114, 115,
    116, 116.5, 117, 117.5, 118, 118.5, 119, 119.5,
    120, 121, 122, 123,
    124, 124.5, 125, 125.5, 126, 126.5, 127, 127.5,
    129, 130, 131,
    132, 132.5, 133, 133.5, 134, 134.5, 135, 135.5,
    136, 137, 138, 139,
    140, 140.5, 141, 141.5, 142,
    --OK
    --Первый куплет
    145, 145.5, 146, 146.5, 147, 147.5,
    148,
    153+1, 153.5+1, 154+1, 154.5+1, 155+1, 155.5+1,
    156+1,
    161, 161.5, 162, 162.5, 163, 163.5,
    164, 167,
    168+1, 169+1, 169.5+1, 170+1, 170.5+1, 171+1, 171.5+1,
    172+1,
    --Ать ать в куплете
    177, 179,
    181, 183,
    185, 186, 187, 188,
    189, 190, 190.5, 191, 191.5, 192, 192.5,
    --OK
    --драмн в куплете
    194, 195, 196,
    197, 197.5, 198, 198.5, 199, 199.5, 200, 200.5,
    201, 202, 203, 204,
    205, 205.5, 206, 206.5, 207, 207.5, 208, 208.5,
    209, 210, 211, 212,
    213, 213.5, 214, 214.5, 215, 215.5, 216, 216.5,
    217, 218, 219, 220,
    221, 221.5, 222, 222.5, 223,
    --226
    226, 227, 228, 229,
    230, 230.5, 231, 231.5, 232, 232.5, 233, 233.5,
    234, 235, 236, 237,
    238, 238.5, 239, 239.5, 240, 240.5, 241, 241.5,
    243, 244, 245,
    246, 246.5, 247, 247.5, 248, 248.5, 249, 249.5,
    250, 251, 252, 253,
    254, 254.5, 255, 255.5, 256,
    --OK
    --Второй Куплет
    259, 259.5, 260, 260.5, 261, 261.5, 262, 267, 267.5, 268, 268.5, 269, 269.5, 270, 275, 275.5, 276, 276.5, 277, 277.5, 278, 281, 282, 283, 283.5, 284, 284.5, 285, 285.5, 286, 291, 291.5, 292, 292.5, 293, 293.5, 294, 299, 299.5, 300, 300.5, 301, 301.5, 302, 307, 307.5, 308, 308.5, 309, 309.5, 310, 313, 314, 315, 315.5, 316, 316.5, 317, 317.5, 318, 321, 323, 325, 327, 330, 331, 332, 333, 334, 335, 335.5, 336, 336.5, 337, 337.5, 339, 340, 341, 342, 342.5, 343, 343.5, 344, 344.5, 345, 345.5, 346, 347, 348, 349, 350, 350.5, 351, 351.5, 352, 352.5, 353, 353.5, 354, 355, 356, 357, 358, 358.5, 359, 359.5, 360, 360.5, 361, 361.5, 362, 363, 364, 365, 366, 366.5, 367, 367.5, 368, 371, 372, 373, 374, 375, 375.5, 376, 376.5, 377, 377.5, 378, 378.5, 379, 380, 381, 382, 383, 383.5, 384, 384.5, 385, 385.5, 386, 386.5, 388, 389, 390, 391, 391.5, 392, 392.5, 393, 393.5, 394, 394.5, 395, 396, 397, 398, 399, 399.5, 400, 400.5, 401,
    --проигрыш 404
    402, 404,
    406, 408,
    410, 412,
    414, 416,
    418, 420,
    422, 424,
    426, 428,
    430, 432,
    --что бы бог подал
    434, 436,
    438, 439, 440,
    442, 443, 444, 445,
    446, 447, 448,
    450, 450.5, 451, 452, 453,
    454, 455, 456,
    458, 459, 460, 461,
    462, 463, 464,
    --ещё раз
    466, 468,
    470, 471, 472,
    474, 475, 476, 477,
    478, 479, 480,
    482, 482.5, 483, 484, 485,
    486, 487, 488,
    490, 491, 492, 493,
    494, 495, 496,
    --дубль
    434, 436,
    438, 439, 440,
    442, 443, 444, 445,
    446, 447, 448,
    450, 450.5, 451, 452, 453,
    454, 455, 456,
    458, 459, 460, 461,
    462, 463, 464,
    --ещё раз
    466, 468,
    470, 471, 472,
    474, 475, 476, 477,
    478, 479, 480,
    482, 482.5, 483, 484, 485,
    486, 487, 488,
    490, 491, 492, 493,
    494, 495, 496,

}

PritoptatShortArrows = {
    1, 1, 1,
    4, 3, 2, 1,
    4,
    3,
    7, 7,
    10, 9, 8, 7,
    10,
    9,
    1, 1,
    4, 3, 2, 3,
    4,
    7, 8,
    7, 10, 10,
    9, 7, 10, 8,
    7,
    --OK
    --Ать Ать
    2, 2,
    1, 1,
    7, 7, 7, 7,
    7, 10, 10, 9, 7, 10, 9,
    --Драмнбейс
    2, 2, 1, 1,
    1, 1, 1, 1, 1, 2, 3, 4,
    8, 8, 7, 7,
    7, 7, 7, 7, 10, 9, 8, 7,
    2, 2, 1, 1,
    1, 1, 1, 1, 1, 2, 3, 4,
    8, 8, 7, 7,
    8, 8, 8, 7, 8,
    --112
    2, 2, 1, 1,
    1, 1, 1, 1, 1, 2, 3, 4,
    8, 8, 7, 7,
    7, 7, 7, 7, 10, 9, 8, 7,
    2, 1, 1,
    1, 1, 1, 1, 1, 2, 3, 4,
    8, 8, 7, 7,
    8, 8, 8, 7, 8,
    --OK
    --ПЕрвый Куплет
    2, 2, 1, 1, 1, 1,
    2,
    9, 9, 8, 8, 8, 8,
    7,
    2, 2, 1, 1, 1, 1,
    4, 3,
    2, 9, 9, 8, 8, 8, 8,
    7,
    --ать ать в куплете
    2, 4,
    1, 3,
    7, 10,
    7, 10,
    7, 10, 10, 9, 7, 9, 8,
    --OK
    --Драмн в куплете
    2, 1, 1,
    1, 1, 1, 1, 1, 2, 3, 4,
    8, 8, 7, 7,
    7, 7, 7, 7, 10, 9, 8, 7,
    2, 2, 1, 1,
    1, 1, 1, 1, 1, 2, 3, 4,
    8, 8, 7, 7,
    8, 8, 8, 7, 8,
    --226
    2, 2, 1, 1,
    1, 1, 1, 1, 1, 2, 3, 4,
    8, 8, 7, 7,
    7, 7, 7, 7, 10, 9, 8, 7,
    2, 1, 1,
    1, 1, 1, 1, 1, 2, 3, 4,
    8, 8, 7, 7,
    8, 8, 8, 7, 8,
    --OK
    --ВТОРОЙ Куплет
    2, 2, 1, 1, 1, 1,
    2,
    9, 9, 8, 8, 8, 8,
    7,
    2, 2, 1, 1, 1, 1,
    4, 3,
    2, 9, 9, 8, 8, 8, 8,
    7,
    2, 2, 1, 1, 1, 1,
    2,
    9, 9, 8, 8, 8, 8,
    7,
    2, 2, 1, 1, 1, 1,
    4, 3,
    2, 9, 9, 8, 8, 8, 8,
    7,
    --ать ать в куплете
    2, 4,
    1, 3,
    7, 10,
    7, 10,
    7, 10, 10, 9, 7, 9, 8,
    --OK
    --Драмн в куплете
    2, 1, 1,
    1, 1, 1, 1, 1, 2, 3, 4,
    8, 8, 7, 7,
    7, 7, 7, 7, 10, 9, 8, 7,
    2, 2, 1, 1,
    1, 1, 1, 1, 1, 2, 3, 4,
    8, 8, 7, 7,
    8, 8, 8, 7, 8,
    --226
    2, 2, 1, 1,
    1, 1, 1, 1, 1, 2, 3, 4,
    8, 8, 7, 7,
    7, 7, 7, 7, 10, 9, 8, 7,
    2, 1, 1,
    1, 1, 1, 1, 1, 2, 3, 4,
    8, 8, 7, 7,
    8, 8, 8, 7, 8,
    --
    1, 2, 3, 4,
    3, 2, 1, 2,
    3, 4, 3, 2,
    1, 2, 3, 4,
    --чтобы бог подал
    4, 3,
    1, 4, 3,
    4, 3, 2, 1,
    3, 2, 3,
    4, 4, 4, 2, 2,
    1, 4, 3,
    4, 3, 2, 1,
    3, 2, 3,
    ----
    4, 3,
    1, 4, 3,
    4, 3, 2, 1,
    3, 2, 3,
    4, 4, 4, 2, 2,
    1, 4, 3,
    4, 3, 2, 1,
    3, 2, 3,
    --повторная партия игрока
    10, 9,
    7, 10, 9,
    10, 9, 8, 7,
    9, 8, 8,
    10, 10, 10, 8, 8,
    7, 10, 9,
    10, 9, 8, 7,
    9, 8, 9,
    ----
    10, 9,
    7, 10, 9,
    10, 9, 8, 7,
    9, 8, 8,
    10, 10, 10, 8, 8,
    7, 10, 9,
    10, 9, 8, 7,
    9, 8, 9,
}


-- 434,436,
--  438,439,440,
-- 442,443,444,445,
--446,447,448,
--450,450.5,451,452,453,
--454,455,456,
--458,459,460,461,
--462,463,464,
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 24.10.2021 23:56
---
VillageOfFoolsPlayers = {
    0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5,
    4,4.5,5,
    8,8.5,9,
    12,12.5,13,
    16,16.5,17,17.5,18,18.5,19,19.5,
    20,20.5,21,
    24,24.5,25,26,26.5,27,
    28,
    --32,32.5,33,33.5,34,34.5,35,35.5,
    --36,36.5,37,
    --40,40.5,41,
    --44,44.5,45,
}

VillageArrowPos={
    7,7,8,9,10,7,7,8,
    10,7,7,
    9,8,8,
    10,6,6,
    7,7,8,9,10,7,7,8,
    10,6,6,
    10,9,8,
    10,9,8,
    10,
}


VillageOfFoolsEnemy = {
    33,33,35,35,
    37,37,37,37,
    41,41,43,43,
    45,45,47,47,

}
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bear.
--- DateTime: 30.10.2021 19:30
---
Zavodila={ --613
    0,0.75,1.5,2,2.75,3.5,
    4,4.75,5.5,6,6.75,7.5,
    8,8.75,9.5,10,10.75,11.5,
    12,12.75,13.5,14,14.75,15.5,
    -----
    16,16.75,17.5,18,18.75,19.5,
    20,20.75,21.5,22,22.75,23.5,
    24,24.75,25.5,26,26.75,27.5,
    28,28.75,29.5,30,30.75,31.5,
    --Ускорение
    32,32.25,32.5,32.75,33,33.25,33.5,33.75,34,34.25,34.5,34.75,35,35.25,35.5,35.75,
    36,36.25,36.5,36.75,37,37.25,37.5,37.75,38,38.25,38.5,38.75,39,39.25,39.5,39.75,
    40,40.25,40.5,40.75,41,41.25,41.5,41.75,42,42.25,42.5,42.75,43,43.25,43.5,43.75,
    44,44.25,44.5,44.75,45,45.25,45.5,45.75,46,46.5,47,47.5,
    --партия игрока
    48,48.25,48.5,48.75,49,49.25,49.5,49.75,50,50.25,50.5,50.75,51,51.25,51.5,51.75,
    52,52.25,52.5,52.75,53,53.25,53.5,53.75,54,54.25,54.5,54.75,55,55.25,55.5,55.75,
    56,56.25,56.5,56.75,57,57.25,57.5,57.78,58,58.25,58.5,58.75,59,59.25,59.5,59.75,
    60,60.25,60.5,60.75,61,61.25,61.5,61.75,62,62.25,62.5,62.75,63,63.25,63.5,63.75,
    --бот 7-7-9-10 нот в такте
    64,64.75,65.5,66,66.5,66.75,67.5,
    68,68.75,69.5,70,70.5,71,71.5,
    72,72.5,72.75,73.5,74,74.5,74.75,75.25,75.5,
    76,76.5,76.75,77,77.25,77.5,78,78.5,79,79.5,
    --игрок 7-7-9-10
    80,80.75,81.5,82,82.5,82.75,83.5,
    84,84.75,85.5,86,86.5,87,87.5,
    88,88.5,88.75,89.5,90,90.5,90.75,91.25,91.5,
    92,92.5,92.75,93,93.25,93.5,94,94.5,95,95.5,
    --- Повтор бот 7 7 9 10
    96,96.75,97.5,98,98.5,98.75,99.5,
    100,100.75,101.5,102,102.5,103,103.5,
    104,104.5,104.75,105.5,106,106.5,106.75,107.25,107.5,
    108,108.5,108.75,109,109.25,109.5,110,110.5,111,111.5,
    ---- Повтор игрок 7 7 9 10
    112,112.75,113.5,114,114.5,114.75,115.5,
    116,116.75,117.5,118,118.5,119,119.5,
    120,120.5,120.75,121.5,122,122.5,122.75,123.25,123.5,
    124,124.5,124.75,125,125.25,125.5,126,126.5,127,127.5,
    --Бот момент из начала
    128,128.75,129.5,130,130.75,131.5,
    132,132.75,133.5,134,134.75,135.5,
    --игрок
    136,136.75,137.5,138,138.75,139.5,140,
    140.75,141.5,142,142.75,143.5,
    --бот
    144,144.75,145.5,146,146.75,147.5,
    148,148.75,149.5,150,150.75,151.5,
    --игрок
    152,152.75,153.5,154,154.75,155.5,
    156,156.75,157.5,158,158.75,159.5,
    ---Замедленный бит бот
    160,160.5,161,161.5,162,162.5,163,163.5,
    164,164.5,165,165.5,166,166.5,167,167.5,
    168,168.5,169,169.5,170,170.5,171,171.5,
    172,172.5,173,173.5,174,174.5,175,175.5,
    176,176.5,177,177.5,178,178.5,179,179.5,
    180,180.5,181,181.5,182,182.5,183,183.5,
    184,184.5,185,185.5,186,186.5,187,187.5,
    188,188.5,189,189.5,190,190.5,191,191.5,
    192,192.5,193,193.5,194,194.5,195,195.5,
    196,196.5,197,197.5,198,198.5,199,199.5,
    200,200.5,201,201.5,202,202.5,203,203.5,
    204,204.5,205,205.5,206,206.5,207,207.5,
    208,208.5,209,209.5,210,210.5,211,211.5,
    212,212.5,213,213.5,214,214.5,215,215.5,
    216,216.5,217,217.5,218,218.5,219,219.5,
    220,220.5,221,221.5,222,222.5,223,223.5,
    --Повтор 7 7 9 10
    224,224.75,225.5,226,226.5,226.75,227.5,
    228,228.75,229.5,230,230.5,231,231.5,
    232,232.5,232.75,233.5,234,234.5,234.75,235.25,235.5,
    236,236.5,236.75,237,237.25,237.5,238,238.5,239,239.5,

    240,240.75,241.5,242,242.5,242.75,243.5,
    244,244.75,245.5,246,246.5,247,247.5,
    248,248.5,248.75,249.5,250,250.5,250.75,251.25,251.5,
    252,252.5,252.75,253,253.25,253.5,254,254.5,255,255.5,

    256,256.75,257.5,258,258.5,258.75,259.5,260,
    260.75,261.5,262,262.5,263,263.5,
    264,264.5,264.75,265.5,266,266.5,266.75,267.25,267.5,
    268,268.5,268.75,269,269.25,269.5,270,270.5,271,271.5,

    272,272.75,273.5,274,274.5,274.75,275.5,
    276,276.75,277.5,278,278.5,279,279.5,
    280,280.5,280.75,281.5,282,282.5,282.75,283.25,283.5,
    284,284.5,284.75,285,285.25,285.5,286,286.5,287,287.5,

    288,-- КОНЕЦ

}

ZavodilaPOS={ --613
    1,4,4,3,2,1,
    1,4,4,3,2,1,
    7,10,10,9,8,7,
    7,10,10,9,8,7,
    1,4,4,3,2,1,
    1,4,4,3,2,1,
    7,10,10,9,8,7,
    7,10,10,9,8,7,
    --ускорение
    2,1,2,3,4,1,2,3,4,3,4,3,4,3,2,1,
    2,1,2,3,4,3,2,1,1,4,1,4,1,4,1,3,
    2,1,2,3,4,3,2,1,2,1,2,3,4,3,4,3,
    4,3,2,3,4,3,2,1,2,3,4,1,
    --Партия игрока
    8,7,8,9,10,7,8,9,10,9,10,9,10,9,8,7,
    8,7,8,9,10,9,8,7,7,10,7,10,7,10,7,9,
    8,7,8,9,10,9,8,7,8,7,8,9,10,9,10,9,
    10,9,8,9,10,9,8,9,10,9,7,8,9,10,8,7,
    --бот 77910 64 такт
    2,3,2,1,3,4,2,3,4,3,1,2,4,3,3,3,4,3,2,2,1,1,2,4,4,4,3,2,3,1,2,3,4,
    8,9,8,7,9,10,8,9,10,9,7,8,10,9,9,9,10,9,8,8,7,7,8,10,10,10,9,8,9,7,8,9,10,
    2,3,2,1,3,4,2,3,4,3,1,2,4,3,3,3,4,3,2,2,1,1,2,4,4,4,3,2,3,1,2,3,4,
    8,9,8,7,9,10,8,9,10,9,7,8,10,9,9,9,10,9,8,8,7,7,8,10,10,10,9,8,9,7,8,9,10,
    --128 бот
    1,4,4,3,2,1,1,4,4,3,2,1,
    7,10,10,9,8,7,7,10,10,9,8,7,
    1,4,4,3,2,1,1,4,4,3,2,1,
    7,10,10,9,8,7,7,10,10,9,8,7,
    --160 замедленный бит
    4,3,2,4,3,2,1,4,3,1,2,3,4,3,2,3,
    10,9,8,10,9,8,7,10,9,7,8,9,10,9,8,9,
    4,3,2,4,3,2,1,4,3,1,2,3,4,3,2,3,
    10,9,8,10,9,8,7,10,9,7,8,9,10,9,8,9,
    4,3,2,4,3,2,1,4,3,1,2,3,4,3,2,3,
    10,9,8,10,9,8,7,10,9,7,8,9,10,9,8,9,
    4,3,2,4,3,2,1,4,3,1,2,3,4,3,2,3,
    10,9,8,10,9,8,7,10,9,7,8,9,10,9,8,9,
    --224
    2,3,2,1,3,4,2,3,4,3,1,2,4,3,3,3,4,3,2,2,1,1,2,4,4,4,3,2,3,1,2,3,4,
    8,9,8,7,9,10,8,9,10,9,7,8,10,9,9,9,10,9,8,8,7,7,8,10,10,10,9,8,9,7,8,9,10,
    2,3,2,1,3,4,2,3,4,3,1,2,4,3,3,3,4,3,2,2,1,1,2,4,4,4,3,2,3,1,2,3,4,
    8,9,8,7,9,10,8,9,10,9,7,8,10,9,9,9,10,9,8,8,7,7,8,10,10,10,9,8,9,7,8,9,10,
    9,-- Конец
}
--CUSTOM_CODE
function Trig_SetCam_Actions()
    ResetUnitAnimation(gg_unit_Hart_0002)
    ResetUnitAnimation(gg_unit_opeo_0003)
    SetCameraBoundsToRectForPlayerBJ(Player(0), gg_rct_Region_000)
    CameraSetupApplyForPlayer(true, gg_cam_Camera_001, Player(0), 0)
    EndThematicMusicBJ()
    StopMusicBJ(true)
end

function InitTrig_SetCam()
    gg_trg_SetCam = CreateTrigger()
    TriggerRegisterTimerEventSingle(gg_trg_SetCam, 0.01)
    TriggerAddAction(gg_trg_SetCam, Trig_SetCam_Actions)
end

function Trig_Jaina_Actions()
    SetUnitAnimation(gg_unit_Hjai_0001, "stand")
        SetUnitAnimationByIndex(gg_unit_Hjai_0001,30)
        UnitAddAbility(gg_unit_Hjai_0001, FourCC('Aave'))
    SetUnitFlyHeightBJ(gg_unit_Hjai_0001, 10.00, 0.00)
    SetTimeOfDay(12)
    SetTimeOfDayScalePercentBJ(0.00)
end

function InitTrig_Jaina()
    gg_trg_Jaina = CreateTrigger()
    TriggerAddAction(gg_trg_Jaina, Trig_Jaina_Actions)
end

function InitCustomTriggers()
    InitTrig_SetCam()
    InitTrig_Jaina()
end

function RunInitializationTriggers()
    ConditionalTriggerExecute(gg_trg_Jaina)
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
    SetCameraBounds(-1280.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -1536.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 5376.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 1024.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -1280.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 1024.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 5376.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -1536.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
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
    RunInitializationTriggers()
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

