---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bear.
--- DateTime: 31.10.2021 21:31
---
do
    local InitGlobalsOrigin = InitGlobals
    function InitGlobals()
        InitGlobalsOrigin()
        AllPreload()
        InitTrig_SyncLoadDone()
        TimerStart(CreateTimer(), 1, false, function()
            InitPreloadStart()
            --print(enc("AAAAA"))
        end)
    end
end

function AllPreload()
    StopSound(normal_sound("All"), true, false)
    StopSound(normal_sound("zavodila"), true, false)
end



---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 11.03.2021 1:23
---




function InitPreloadStart()
    --print("Start preload tester")
    --PreloadGenClear()
    SavePath = "save\\fnfScore.txt"
    Preloader(SavePath) --в этот момент данные записываются в имя способности, для каждого игрока свои данные
    local s = BlzGetAbilityTooltip(FourCC('Agyv'), 0) --переменная S хранит асинхронные данные
    --print("AAAAAAA "..s)
    BlzSendSyncData("myprefix", s)
    local i = 0
    if udg_LoadCode[i] then
        if tonumber(LoadedGold[i]) then
            -- код может быть числом, пока что
        else
            print("FirstGame", GetPlayerName(Player(i)))
        end

    end


end

udg_LoadCode = {}

function InitTrig_SyncLoadDone ()
    local gg_trg_SyncLoadDone = CreateTrigger()
    for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
        BlzTriggerRegisterPlayerSyncEvent(gg_trg_SyncLoadDone, Player(i), "myprefix", false)
    end
    TriggerAddAction(gg_trg_SyncLoadDone, function()
        local prefix = BlzGetTriggerSyncPrefix()
        local value = BlzGetTriggerSyncData()
        local i = GetPlayerId(GetTriggerPlayer())
        --print("SyncData="..value)

        if prefix == "myprefix" then
            --print(value,dec(value))
            udg_LoadCode[i] = dec(value)
            AddPoint(S2I(dec(value)))
        end


    end)
end

function SaveResult(SaveCode)
    Preload("\")\ncall BlzSetAbilityTooltip ('Agyv',\"" .. SaveCode .. "\",0)" .. "\n//")
    PreloadGenEnd(SavePath)
    PreloadGenClear()
end
