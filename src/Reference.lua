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