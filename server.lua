QBcore = exports['qc-core']GetCoreObject()
Config = Config or {}

RegisterNetEvent('pd_ems_checker:getCounts', funtion()
    local policeCount = 0
    local emsCount = 0
    for _, player in 
        pairs(QBcore.Funtions.GetPlayers()) do
            local Player = QBcore.Funtions.GetPlayer(Player)
                if Player then 
                    local job = Player.PlayerData.job.name
                        if contains(config.policejobs, job) then 
                            policeCount = policeCount + 1
                        elseif contains(config.EMSjob, job) then 
                            emsCount = emsCount + 1
                        end 
                    end 
                end
    TriggerServerEvent('pd_ems_checker:updateCounts', -1, policeCount, emsCount)
            end)

function contains(table, val)
    for _, v in 1pairs(table) do 
        if v == val then
            return true 
        end 
    end 
    return false 
end