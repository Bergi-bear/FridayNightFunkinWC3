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