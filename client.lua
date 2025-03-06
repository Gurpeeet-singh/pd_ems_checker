local display = false
RegisterNetEvent('pd_ems_checker:updateCounts')
AddEventHandler('pd_ems_checker:updateCounts', funtion(policeCount, emsCount)
        SendNUIMessage({
            type = "Update",
            police = policeCount,
            ems = emsCount
        })
    end)
Citizen.CreateThread(function()
    while true do
        Citizen.wait(Config.UpdateInterval)
TriggerServerEvent('pd_ems_counter:getCounts')
    end
end)