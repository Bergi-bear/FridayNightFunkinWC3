---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 20.10.2021 22:26
---
GPoint = 0
function CreatePointInterFace()
    local ico = "war3mapImported\\xgm"
    local frame = BlzCreateFrameByType('BACKDROP', 'FaceButtonIcon', BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), '', 0)
    BlzFrameSetParent(frame, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetTexture(frame, ico, 0, true)
    BlzFrameSetSize(frame, 0.04, 0.04)
    BlzFrameSetAbsPoint(frame, FRAMEPOINT_CENTER, 0.85, 0.55)

    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", frame, "", 0)
    BlzFrameSetParent(text, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetText(text, "0")
    BlzFrameSetScale(text, 2)
    BlzFrameSetPoint(text, FRAMEPOINT_RIGHT, frame, FRAMEPOINT_RIGHT, 0.02, 0.0)
    GPointTextFrame = text
end

function AddPoint(points)
    GPoint = GPoint + points
    local descriptions = R2I(I2S(GPoint))
    BlzFrameSetText(GPointTextFrame, descriptions)
    CreateFlyPoint(points)
end

function CreateFlyPoint(descriptions)
    local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "", 0)
    local x, y = 0.5, 0.3
    BlzFrameSetParent(text, BlzGetFrameByName("ConsoleUIBackdrop", 0))
    BlzFrameSetText(text, descriptions)
    BlzFrameSetScale(text, 4)
    BlzFrameSetAbsPoint(text, FRAMEPOINT_CENTER, x, y)
    local reverse = false
    --local hide = false
    TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
        if not reverse then
            y = y + 0.002
        else
            y = y - 0.004
            x = x + 0.004
            BlzFrameSetAlpha(text, R2I(y * 102))
        end
        if y > 0.35 then
            reverse = true
        end

        BlzFrameSetAbsPoint(text, FRAMEPOINT_CENTER, x, y)
        if reverse and y <= 0.3 then
            --print("destroy")
            DestroyTimer(GetExpiredTimer())
            BlzDestroyFrame(text)
        end

    end)
end
