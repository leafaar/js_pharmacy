local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
RegisterServerEvent('js_deseases:tryPayment')
AddEventHandler('js_deseases:tryPayment', function(total, itens)
    local user_id = vRP.getUserId(source)
    if user_id > 0 then
        if vRP.tryPayment(user_id, total) then
            TriggerClientEvent('js_deseases:sendData', source, true)
            for _, item in ipairs(itens) do 
                vRP.giveInventoryItem(user_id, string.lower(item.name), item.quantity)
            end
        else
            TriggerClientEvent('js_deseases:sendData', source, false)
        end
    end
end)