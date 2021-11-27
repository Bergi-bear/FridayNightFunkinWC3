---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 24.11.2021 19:59
---
function EffectFromPoint2Point(effModel, x, y, xEnd, yEnd)
    local z = 80
    local eff = AddSpecialEffect(effModel, x, y)
    BlzSetSpecialEffectPosition(eff, x, y, z)
    local angle = AngleBetweenXY(x, y, xEnd, yEnd)
    local angleFake = angle - 45
    BlzSetSpecialEffectScale(eff, 0.1)
    local d=0
    TimerStart(CreateTimer(), TIMER_PERIOD64, true, function()
        d=d+1
        angleFake = angleFake + 7
        x, y = MoveXY(x, y, 20, -180 + angleFake)
        BlzSetSpecialEffectPosition(eff, x, y, z)
        BlzSetSpecialEffectScale(eff, 0.1)
        if DistanceBetweenXY(x, y, xEnd, yEnd) <= 50 or d>=100 then
            DestroyTimer(GetExpiredTimer())
            DestroyEffect(eff)
            --print("долетел")
        end
    end)
end