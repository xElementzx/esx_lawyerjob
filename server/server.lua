ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
TriggerEvent('esx_phone:registerNumber', 'lawyer', _U('alert_lawyer'), true, true)
TriggerEvent('esx_society:registerSociety', 'lawyer', 'Lawyer', 'society_lawyer', 'society_lawyer', 'society_lawyer', {type = 'private'})
RegisterServerEvent('esx_lawyerjob:onduty')
AddEventHandler('esx_lawyerjob:onduty', function(job)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local job = xPlayer.job.name
    local grade = xPlayer.job.grade
    if job == 'offlawyer' then
        xPlayer.setJob('lawyer', grade)
        TriggerClientEvent('esx:showNotification', _source, _U('now_on_duty'))
    elseif job == 'lawyer' then
        TriggerClientEvent('esx:showNotification', _source, _U('already_on_duty'))
    end
end)
RegisterServerEvent('esx_lawyerjob:offduty')
AddEventHandler('esx_lawyerjob:offduty', function(job)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local job = xPlayer.job.name
    local grade = xPlayer.job.grade
    if job == 'lawyer' then
        xPlayer.setJob('offlawyer', grade)
        TriggerClientEvent('esx:showNotification', _source, _U('now_off_duty'))
    elseif job == 'offlawyer' then
        TriggerClientEvent('esx:showNotification', _source, _U('already_off_duty'))
    end
end)