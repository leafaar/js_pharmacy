local menuactive = false 
function toggleMenu()
    menuactive = not menuactive
    if menuactive then
        SetNuiFocus(true, true)
        SendNUIMessage({ showmenu = true })
    else
        SetNuiFocus(false)
        SendNUIMessage({ hidemenu = true })
    end
end

RegisterNUICallback('exit', function(data)
    toggleMenu()
end)
RegisterNUICallback('error', function(data)
    TriggerEvent('Notify', 'importante', data.msg)
end)

RegisterNUICallback('tryPayment', function(data)
    TriggerServerEvent('js_deseases:tryPayment', data.total, data.itens)
end)

RegisterNetEvent('js_deseases:sendData')
AddEventHandler('js_deseases:sendData', function(data)
    SendNUIMessage({ tryPayment = data })
end)

local coords = {
    {25.77, -1347.74, 29.5}
}

Citizen.CreateThread(function()
    local sleep = 500
	while true do
		Citizen.Wait(sleep)
		for _, coord in pairs(coords) do
			local x,y,z = table.unpack(coord)
			local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),x,y,z,true)
            if distance <= 1 then
                sleep = 1
				DrawMarker(21,x,y,z-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,255,0,0,50,0,0,0,1)
				if IsControlJustPressed(0,38) then
					toggleMenu()
				end
			end
		end
	end
end)
