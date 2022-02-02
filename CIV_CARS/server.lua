-- Sets server list convar
SetConvarServerInfo('tags', 'MEGA_CIV_CARS')
-- Setup for the version check
updatePath = "/PLOKMJNB/FiveM-Civ-Car-Pack" -- your git user/repo path
-- Console stuff
Citizen.CreateThread(function()
    if GetCurrentResourceName() ~= "PLOKS_CARS" then
        print("-----------------------------------------------------")
        print("Please Dont Change the resource name to avoid errors.")
        print("-----------------------------------------------------")
    end
    if GetCurrentResourceName() == 'PLOKS_CARS' then
        function checkVersion(_, responseText)
            curVersion = LoadResourceFile(GetCurrentResourceName(), "version")

            if curVersion ~= responseText and tonumber(curVersion) < tonumber(responseText) then
                print("╔═╗╔═╗─────────╔═══╗────────╔╗───────────────╔╗ ║                   Thanks for downloading the Mega Development CIV car pack!")
                print("║║╚╝║║─────────╚╗╔╗║────────║║──────────────╔╝╚╗║")
                print("║╔╗╔╗╠══╦══╦══╗─║║║╠══╦╗╔╦══╣║╔══╦══╦╗╔╦══╦═╬╗╔╝║     If any support is needed please feel free to join our Discord, discord.gg/ezZUvgmr27")
                print("║║║║║║║═╣╔╗║╔╗║─║║║║║═╣╚╝║║═╣║║╔╗║╔╗║╚╝║║═╣╔╗╣║ ║")
                print("║║║║║║║═╣╚╝║╔╗║╔╝╚╝║║═╬╗╔╣║═╣╚╣╚╝║╚╝║║║║║═╣║║║╚╗║                        Looks like your current pack is outdated!")
                print("╚╝╚╝╚╩══╩═╗╠╝╚╝╚═══╩══╝╚╝╚══╩═╩══╣╔═╩╩╩╩══╩╝╚╩═╝║ should be: "..responseText..",currently is: "..curVersion..". Please update it from https://github.com"..updatePath.."")
            elseif tonumber(curVersion) > tonumber(responseText) then
                print("╔═╗╔═╗─────────╔═══╗────────╔╗───────────────╔╗ ║                   Thanks for downloading the Mega Development CIV car pack!")
                print("║║╚╝║║─────────╚╗╔╗║────────║║──────────────╔╝╚╗║")
                print("║╔╗╔╗╠══╦══╦══╗─║║║╠══╦╗╔╦══╣║╔══╦══╦╗╔╦══╦═╬╗╔╝║     If any support is needed please feel free to join our Discord, discord.gg/ezZUvgmr27")
                print("║║║║║║║═╣╔╗║╔╗║─║║║║║═╣╚╝║║═╣║║╔╗║╔╗║╚╝║║═╣╔╗╣║ ║")
                print("║║║║║║║═╣╚╝║╔╗║╔╝╚╝║║═╬╗╔╣║═╣╚╣╚╝║╚╝║║║║║═╣║║║╚╗║                Uh Oh! You somehow skipped a few versions of CIV-CARS")
                print("╚╝╚╝╚╩══╩═╗╠╝╚╝╚═══╩══╝╚╝╚══╩═╩══╣╔═╩╩╩╩══╩╝╚╩═╝║  or the git went offline, if it's still online please update (or downgrade?)")
            else
                print("╔═╗╔═╗─────────╔═══╗────────╔╗───────────────╔╗║                   Thanks for downloading the Mega Development CIV car pack!")
                print("║║╚╝║║─────────╚╗╔╗║────────║║──────────────╔╝╚╗║")
                print("║╔╗╔╗╠══╦══╦══╗─║║║╠══╦╗╔╦══╣║╔══╦══╦╗╔╦══╦═╬╗╔╝║     If any support is needed please feel free to join our Discord, discord.gg/ezZUvgmr27")
                print("║║║║║║║═╣╔╗║╔╗║─║║║║║═╣╚╝║║═╣║║╔╗║╔╗║╚╝║║═╣╔╗╣║ ║")
                print("║║║║║║║═╣╚╝║╔╗║╔╝╚╝║║═╬╗╔╣║═╣╚╣╚╝║╚╝║║║║║═╣║║║╚╗║                   It looks like CIV_CARS is up to date, have fun!")
            end
        end
    end

    PerformHttpRequest("https://raw.githubusercontent.com"..updatePath.."/master/PLOKS_CARS/version", checkVersion, "GET")
end)