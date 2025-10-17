local QBCore = exports['qb-core']:GetCoreObject()

lib.callback.register('qs-drugs-creator:checkPerm', function(source)
    local player = QBCore.Functions.GetPlayer(source)
    if not player then return false end

    local perm = player.PlayerData.permission or player.PlayerData.group or 'user'

    if perm == 'admin' or perm == 'superadmin' or perm == 'god' then
        return true
    end

    return false
end)
