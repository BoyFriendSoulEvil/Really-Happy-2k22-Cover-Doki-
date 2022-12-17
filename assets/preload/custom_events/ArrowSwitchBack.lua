function onEvent(name, value1, value2)
	if name == 'ArrowSwitchBack' then
		noteTweenX('play0', 4, 735, 0.1, 'quartInOut')
		noteTweenX('play4', 7, 1075, 0.1, 'quartInOut')
		noteTweenX('play2', 5, 849, 0.1, 'quartInOut')
		noteTweenX('play3', 6, 960, 0.1, 'quartInOut')
		if flashingLights then		
			cameraFlash('hud', 'ffffff', 0.25, 'false')
		end
	end
end
	