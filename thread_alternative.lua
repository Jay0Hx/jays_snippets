-- Where ever using threads you can replace them as per the example below. (Much more server friendly)

-- Thread Example:
Citizen.CreateThread(function() 	
    while true do 		
        Citizen.Wait(0) 		
        if IsControlPressed(1, 47 --[[ "G" key ]]) then 	
            SetPedToRagdoll(GetPlayerPed(-1), 1000, 1000, 0, true, true, false) 
        end 	
    end 
end)

-- Replacement example using KeyMapping:
RegisterKeyMapping('lakeside_ragdoll', 'Go all floppy and pass out', 'keyboard', 'G')
RegisterCommand('lakeside_ragdoll', function()
    SetPedToRagdoll(GetPlayerPed(-1), 1000, 1000, 0, true, true, false)
end)
