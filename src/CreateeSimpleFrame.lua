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
        if number == 1 then
            BlzFrameSetText(ttText, ColorText2("Название: ") .. "BooBeeBoo" .. ColorText2("\nСложность: ") .. " нулевая" .. ColorText2("\nЧисло нот:") .. "  118 \nНажмите на иконку песни, чтобы её выбрать или перезапустить.")
        end
        if number == 2 then
            if not LockedState[number] then
                BlzFrameSetText(ttText, "Чтобы разблокировать эту песню необходимо набрать "..ColorText2(PointForUnlock[number]).. " очков")
            else
                BlzFrameSetText(ttText, ColorText2("Название: ") .. "Zavodila" .. ColorText2("\nСложность: ") .. " средняя" .. ColorText2("\nЧисло нот:") .. "  603 \nНажмите на иконку песни, чтобы её выбрать или перезапустить.")
            end
        end

        if number == 3 then
            if not LockedState[number] then
                BlzFrameSetText(ttText, "Чтобы разблокировать эту песню необходимо набрать "..ColorText2(PointForUnlock[number]).. " очков")
            else
                BlzFrameSetText(ttText, ColorText2("Название: ") .. "Hank" .. ColorText2("\nСложность: ") .. " высокая" .. ColorText2("\nЧисло нот:") .. "  неизвестно \nНажмите на иконку песни, чтобы её выбрать или перезапустить.")
            end
        end
        if number == 4 then
            if not LockedState[number] then
                BlzFrameSetText(ttText, "Чтобы разблокировать эту песню необходимо набрать "..ColorText2(PointForUnlock[number]).. " очков")
            else
                BlzFrameSetText(ttText, ColorText2("Название: ") .. "Fresh" .. ColorText2("\nСложность: ") .. " низкая" .. ColorText2("\nЧисло нот:") .. "  167 \nНажмите на иконку песни, чтобы её выбрать или перезапустить.")
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

function CreateToolTipBox()
    local tooltip = BlzCreateFrameByType("FRAME", "TestDialog", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "StandardFrameTemplate", 0)
    local backdrop = BlzCreateFrame("QuestButtonDisabledBackdropTemplate", tooltip, 0, 0)
    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", tooltip, "", 0)
    --BlzFrameSetParent(tooltip, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    --BlzFrameSetParent(backdrop, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    --BlzFrameSetParent(text, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetAbsPoint(tooltip, FRAMEPOINT_CENTER, 0, 0.4)
    BlzFrameSetSize(tooltip, 0.2, 0.15)
    BlzFrameSetSize(backdrop, 0.2, 0.15)
    BlzFrameSetSize(text, 0.2 * .75, 0.15 * .9)
    BlzFrameSetPoint(backdrop, FRAMEPOINT_CENTER, tooltip, FRAMEPOINT_CENTER, 0.0, 0.0)
    BlzFrameSetAlpha(backdrop, 100)
    BlzFrameSetText(text, "ОШИБКА Первичное описание ещё не обновлено")
    BlzFrameSetPoint(text, FRAMEPOINT_CENTER, tooltip, FRAMEPOINT_CENTER, 0.04, 0.0)
    BlzFrameSetVisible(tooltip, false)
    return tooltip, backdrop, text
end

function ColorText2(s)
    s = "|cffffcc00" .. s .. "|r"
    return s
end