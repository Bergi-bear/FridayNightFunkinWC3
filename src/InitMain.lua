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
            DestroyTimer(GetExpiredTimer())
            --Preload("All")
            --Preload("zavodila")
            --Preloader("All")
            --Preloader("zavodila")
            GPlayer = gg_unit_opeo_0003
            GEnemy = gg_unit_Hart_0002
            GJaina = gg_unit_Hjai_0001
            HideEverything()
            ReturnFPS()
            MenuFrame()
            CreateAndStartClock()
            CreatePointInterFace()
            CreateGameSpeedIndicator()
            CreateSongMenus()
            CreateSpaceForRestart()
            StartGCTracker()
            GifCat = CreateAndPlayGif(-0.092, 0.08, "gif\\CatGif\\frame_", 0.08, 157, false, 1 / 24, 1)
            ControlGameCam()
            BugSpeed() -- функция для увеличения скорости игры авто матически
            InitTaurens()
            CreateMissCounter()
            DoNotSaveReplay()
            SetGameSpeed(MAP_SPEED_FASTEST)
            LockGameSpeedBJ()
        end)
        TimerStart(CreateTimer(), 2.5, false, function()
            musics = {}
            isMusicStart = false
            arrows = {}
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
DelayPerTime = 1
BasePoints=100

function StarAllSound(numberSong)
    musics = {}
    isMusicStart = false
    local x, y = GetPlayerStartLocationX(Player(0)), GetPlayerStartLocationY(Player(0))
    --normal_sound("All", x, y)
    musics[#musics + 1] = normal_sound("321GO", x, y)
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
        ShuffleIcons(true)
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