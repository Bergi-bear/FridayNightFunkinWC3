---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 23.11.2021 22:44
---
function PlayerSeeNoiseInRangeTimed(duration, x, y)
    CameraSetEQNoiseForPlayer(Player(0), 3)
    DestroyEffect(AddSpecialEffect("Objects\\Spawnmodels\\Undead\\ImpaleTargetDust\\ImpaleTargetDust.mdl", x, y))
    TimerStart(CreateTimer(), duration, false, function()
        CameraClearNoiseForPlayer(Player(0))
        DestroyTimer(GetExpiredTimer())
    end)

end