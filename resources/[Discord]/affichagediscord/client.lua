Citizen.CreateThread(function()
    while true do
        local id = GetPlayerServerId(PlayerId())
        Citizen.Wait(1000)
        players = {}
        for i = 0, 255 do
            if NetworkIsPlayerActive( i ) then
                table.insert( players, i )
            end
        end
        SetDiscordAppId(717071983929720954)
        SetDiscordRichPresenceAsset('logodiscord')
        SetDiscordRichPresenceAssetText("AddictRP")
        SetDiscordRichPresenceAssetSmall('esx')
        SetDiscordRichPresenceAssetSmallText("discord.gg/qWeuaF8")
        SetRichPresence("👤 Connecté : ".. #players .. "/64")
		SetDiscordRichPresenceAction(0, "Discord 🔔", "https://discord.gg/qWeuaF8")
        SetDiscordRichPresenceAction(1, "Jouer 🎮", "fivem://connect/54.36.127.208:27915")
    end
end)

