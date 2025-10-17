local Framework = nil
local frameworkName = nil

-- Detect framework
CreateThread(function()
    if GetResourceState('qb-core') == 'started' then
        Framework = exports['qb-core']:GetCoreObject()
        frameworkName = 'qb'
        print('[qs-drugs] QBCore framework detected.')
    elseif GetResourceState('es_extended') == 'started' then
        TriggerEvent('esx:getSharedObject', function(obj) Framework = obj end)
        frameworkName = 'esx'
        print('[qs-drugs] ESX framework detected.')
    else
        print('[qs-drugs] No supported framework detected. Script will not function properly.')
    end
end)

-- Unified permission check
lib.callback.register('qs-drugs-creator:checkPerm', function(source)
    if not Framework then return false end

    if frameworkName == 'qb' then
        local player = Framework.Functions.GetPlayer(source)
        if not player then return false end

        local perm = player.PlayerData.permission or player.PlayerData.group or 'user'
        return perm == 'admin' or perm == 'superadmin' or perm == 'god'

    elseif frameworkName == 'esx' then
        local xPlayer = Framework.GetPlayerFromId(source)
        if not xPlayer then return false end

        local group = xPlayer.getGroup() or 'user'
        return group == 'admin' or group == 'superadmin' or group == 'owner'
    end

    return false
end)


