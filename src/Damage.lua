---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 25.10.2021 17:28
---
GameIsDefeat=false
function Damage(amount)
    normal_sound("Mistake", 0, 0)
    SetUnitAnimationByIndex(GPlayer, GetRandomInt(23,24))
    QueueUnitAnimationBJ(GPlayer, "stand ready")
    GHP = GHP + amount
    if GHP==95 or (GHP==100 and GetRandomInt(1,5)==1) then
        --print("toasty")
        CreateToasty()
    end
    if GHP>=105 then
        GHP=100
        BreakCurrentLevel()
        GameIsDefeat=true
        SetUnitAnimation(GPlayer,"death")
        local t={"fnf_loss_sfx","fnf_loss_sfx-pixel"}
        normal_sound(t[GetRandomInt(1,#t)])
        TimerStart(CreateTimer(), 2, false, function()
            if GameIsDefeat then
                MudaMuda()
            end
        end)
    end
end