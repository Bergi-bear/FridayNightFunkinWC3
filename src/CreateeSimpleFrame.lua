function CreateSimpleFrameGlue(posX, PosY, texture, call)
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
        GHandY=PosY
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