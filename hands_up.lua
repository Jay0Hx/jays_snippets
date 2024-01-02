RegisterKeyMapping('lakeside_handsUp', 'Surrender, hands up!', 'keyboard', 'X')
RegisterCommand('lakeside_handsUp', function()				
	RequestAnimDict("missminuteman_1ig_2")
	while not HasAnimDictLoaded("missminuteman_1ig_2") do
		Citizen.Wait(100)
	end

	if not handsUp then
		TaskPlayAnim(GetPlayerPed(-1), dict, "handsup_enter", 8.0, 8.0, -1, 50, 0, false, false, false)
		handsUp = true
	else
		handsup = false
		ClearPedTasks(GetPlayerPed(-1))
	end
end)

-- I have not tested if this works yet, i presume it does but, if not, let me know on discord.
