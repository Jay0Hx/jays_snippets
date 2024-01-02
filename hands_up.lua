Citizen.CreateThread(function() 	
    while true do 		
        Citizen.Wait(0) 		
        if IsControlPressed(1, 47 --[[ "G" key ]]) then 	
            SetPedToRagdoll(GetPlayerPed(-1), 1000, 1000, 0, true, true, false) 
        end 	
    end 
end)
-- Made by STUN#0007
--If you want a different key bind go to https://docs.fivem.net/docs/game-references/controls/#controls jump G for the ozark days