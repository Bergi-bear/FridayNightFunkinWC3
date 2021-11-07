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
            Preload("All")
            Preload("zavodila")
            Preloader("All")
            Preloader("zavodila")

            GPlayer = gg_unit_opeo_0003
            GEnemy = gg_unit_Hart_0002
            ReturnFPS()
            HideEverything()
            CreatePointInterFace()
            CreateSongMenus()
        end)
        TimerStart(CreateTimer(), 2.5, false, function()
            StarAllSound(1) --Автостарт Первой песни
            --RestartInit()
            StartArthasStateMachine()
            StartPeonStateMachine()
            PlayUnitAnimationFromChat()

            DestroyTimer(GetExpiredTimer())
        end)
    end
end

TIMER_PERIOD = 1 / 32
TIMER_PERIOD64 = 1 / 64
ready = false
Camera2Left = true
GameSpeed = 0.6
SONG = 1

function StarAllSound(numberSong)
    musics = {}
    isMusicStart = false
    local x, y = GetPlayerStartLocationX(Player(0)), GetPlayerStartLocationY(Player(0))
    --normal_sound("All", x, y)
    musics[#musics + 1] = normal_sound("321GO", x, y)
    if numberSong == 1 then
        SONG = 1
        GameSpeed = 0.6
        StartArrow(BoPeeBo, ArroPos, "All")
    elseif numberSong == 2 then
        SONG = 2
        GameSpeed = 0.454 -- сдви 0.005 добавил
        StartArrow(Zavodila, ZavodilaPOS, "zavodila")
        --print("Второй песни ещё не существует")
    elseif numberSong == 3 then
        SONG = 3
        --print("Эта песня ещё не готова, спасибо за игру")
        --normal_sound("HankMP3")
        StartArrow(HankTable, HankTablePOS, "HankMP3")
        MUDA = true
        VICTORY = true
        CreateJojoReference(10, true)

        TimerStart(CreateTimer(), 5, false, function()

            TimerStart(CreateTimer(), 0.15, true, function()
                Damage(1)
                if REFERENCE then
                    DestroyTimer(GetExpiredTimer())
                end
            end)
        end)

        TimerStart(CreateTimer(), 10, false, function()
            BreakCurrentLevel()
        end)
    end
    if not ready then
        CreateHPBar("20")
        CreateHPBar("06")
        CreateHPBar("00")
        CreateVSIcons()

        ready = true
    end
end
restartReady = true

function BreakCurrentLevel()
    for _, v in pairs(musics) do
        StopSound(v, true, false)
    end
    for _, v in pairs(arrows.timers) do
        DestroyTimer(v)
    end
    for _, v in pairs(arrows.allArrows) do
        v.removed = true
    end
    for _, v in pairs(arrows.up) do
        BlzFrameSetVisible(v, false)
    end
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
        --print(1)
        for i = 1, #notes do
            --print(2)
            local t = CreateTimer()
            arrows.timers[#arrows.timers + 1] = t
            TimerStart(t, notes[i] * GameSpeed, false, function()
                local step = nil
                if arrowPos[i] then
                    step = arrowPos[i]
                else
                    ----print("таблица не заполнена, рандомимся ")
                    step = { 1, 2, 3, 4, 6, 8, 9, 10 }
                    step = step[GetRandomInt(1, #step)] --никогда так не делайте
                end
                --print(i)
                CreateArrow(0.01, step, i, notes, music)
                if step <= 4 then

                    TimerStart(CreateTimer(), 0.1, false, function()
                        PanCameraToTimed(GetUnitX(GEnemy), GetUnitY(GEnemy), 1)

                    end)

                else
                    PanCameraToTimed(GetUnitX(GPlayer), GetUnitY(GPlayer), 1)

                end

                DestroyTimer(GetExpiredTimer())
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
                        AddPoint(100 * STREAK)
                        BlzFrameSetTexture(arrows.up[type + 6], arrows.lighted[type], 0, true)
                        BlzFrameSetVisible(arrow.frame, false)
                        CreateSquack(arrows.X[type + 6], arrows.Y[type])

                        if not arrow.isline then
                            TimerStart(CreateTimer(), 0.1, false, function()
                                BlzFrameSetTexture(arrows.up[type + 6], arrows.static[type], 0, true)

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
                                            end
                                        end
                                    end
                                else
                                    --print("нажата не так кнопка")
                                end
                                for k, v in pairs(arrow.line.all) do
                                    if v.y >= 0.53 then
                                        BlzFrameSetVisible(v.frame, false)
                                        --BlzDestroyFrame(v.frame)
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

        QueueUnitAnimation(GPlayer, "stand ready")
        --print("Кнопка отпущена")
    end


end

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
        --[[TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
            y = y + speed
            BlzFrameSetAbsPoint(image, FRAMEPOINT_CENTER, randomStep, y)
            if y > 0.7 then
                DestroyTimer(GetExpiredTimer())
            end
        end)]]

    end

    for k, v in pairs(last.all) do
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

function CreateArrow(speed, pozX, number, notes, music)
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
        --print("финальная нота должна быть длинной")
        if SONG==1 then
            durations = 2
            arrow.isline = true
            last = CreateLine(speed, pozX, type, (durations - 0.5) / 0.5, arrow)
            arrow.line = last
            arrows.lineTime = durations - 0.5
        end
          if SONG==2 then
            durations = 4
            arrow.isline = true
            last = CreateLine(speed, pozX, type, (durations - 0.5) / 0.5, arrow)
            arrow.line = last
            arrows.lineTime = durations - 0.5
        end

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
            musics[#musics + 1] = normal_sound(music, x, y)
            isMusicStart = true
        end
        if y >= 0.53 and pozX < 5 and arrow.swaped == false then
            PlayArthasAnimation(type, durations, number)
            --Camera2Right = false
            --Camera2Left = true

            --print("камера на артасе",durations)
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
                    for _, v in pairs(arrow.line.all) do
                        if v.y >= 0.53 then
                            BlzFrameSetVisible(v.frame, false)
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
            QueueUnitAnimation(GEnemy, "Stand Ready")
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