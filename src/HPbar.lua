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