cantidadPED = 0.0
Citizen.CreateThread(function()
	while true do
	    Citizen.Wait(0)
	    SetVehicleDensityMultiplierThisFrame(cantidadPED)
	    SetPedDensityMultiplierThisFrame(cantidadPED)
	    SetRandomVehicleDensityMultiplierThisFrame(cantidadPED)
	    SetParkedVehicleDensityMultiplierThisFrame(cantidadPED)
	    SetScenarioPedDensityMultiplierThisFrame(cantidadPED, cantidadPED)
		
		local playerPed = GetPlayerPed(-1)
		local pos = GetEntityCoords(playerPed) 
		RemoveVehiclesFromGeneratorsInArea(pos['x'] - 500.0, pos['y'] - 500.0, pos['z'] - 500.0, pos['x'] + 500.0, pos['y'] + 500.0, pos['z'] + 500.0);
	end
end)

