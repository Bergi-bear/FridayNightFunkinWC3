---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 27.11.2021 20:36
---
function CreateArrow(speed, pozX, number, notes, music)
    GCurrentArrow = number
    print(number,notes[number])
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
                Damage(6 * durations, true)
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