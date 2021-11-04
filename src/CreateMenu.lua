---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 28.10.2021 15:45
---
EMPTY = nil
IcoOfSongsLocked = {}
LockedState = { true, false, false }
PointForUnlock={0,10000,50000}
function CreateSongMenus()
    CreateHandArrowWPulse(-0.05, 0.4)
    EMPTY, IcoOfSongsLocked[1] = CreateSimpleFrameGlue(-0.1, 0.4, "BTNsos", function()
        StartNewSong(1)
    end)

    EMPTY, IcoOfSongsLocked[2] = CreateSimpleFrameGlue(-0.1, 0.4 - 0.04, "lockedicon", function()
        if LockedState[2] then
            StartNewSong(2)
        else
            print("Необходимо", PointForUnlock[2], "очков")
        end
    end)

    EMPTY, IcoOfSongsLocked[3] = CreateSimpleFrameGlue(-0.1, 0.4 - 0.08, "lockedicon", function()
        if LockedState[3] then
            StartNewSong(3)
        else
            print("Необходимо", PointForUnlock[3], "очков")
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
    if not MUDA then
        if not restartReady then
            return
        else
            if IsUnitHidden(GPlayer) then
                AddSpecialEffect("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl", GetUnitXY(GPlayer))
            end
            ShowUnit(GPlayer, true)
            restartReady = false
            GameIsDefeat = false
            GHP = 50
            BreakCurrentLevel()
            SetUnitAnimation(gg_unit_Hart_0002, "Stand Ready")
            SetUnitAnimation(GPlayer, "Stand Ready")
            StarAllSound(number)
            TimerStart(CreateTimer(), 1, false, function()
                restartReady = true
            end)
        end

    end
end
