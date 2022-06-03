function Open(m, c, p) -- msg, color, position
	SendNUIMessage({
		action = 'open',
		message = m,
		color = c,
		position = p,
	})
	
end

function Close()
	SendNUIMessage({
		action = 'close'
	})
end

RegisterNetEvent('sm_textui:open')
AddEventHandler('sm_textui:open', function(m, c, p) -- msg, color, position (example: '[E] for interact', 'red', 'center')
	Open(m, c, p)
end)

RegisterNetEvent('sm_textui:close')
AddEventHandler('sm_textui:close', function()
	Close()
end)

RegisterCommand("open",function()
	TriggerEvent("sm_textui:open", '[E] to interact', 'lightblue', 'right')
end)

RegisterCommand("close",function()
	Close()
end)