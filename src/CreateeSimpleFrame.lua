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
    BlzFrameSetText(ttText, L("Чтобы разблокировать эту песню необходимо набрать " .. ColorText2(dataUnlock) .. " очков и пройти предыдушую песню","To unlock this song, you need to type " .. ColorText2(dataUnlock).. "score points and pass the previous song"))
end