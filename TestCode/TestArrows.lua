---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 18.11.2021 2:06
---
function StartSong()
    --normal_sound("AllForce") --играем музыку
    ClearMapMusicBJ()
    PlayMusicBJ("AllForce")
    SetMusicVolumeBJ(100)
    for i = 1, #BoPeeBoNormal do
        local delay = BoPeeBoNormal[i]
        TimerStart(CreateTimer(), delay, false, function()
            print(delay)
            PauseTimer(GetExpiredTimer())
            DestroyTimer(GetExpiredTimer())
        end)
    end
end