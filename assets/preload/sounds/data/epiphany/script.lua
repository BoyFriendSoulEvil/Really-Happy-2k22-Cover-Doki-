function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bfmonikajumpscare'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'bfded'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', ''); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', ''); --put in mods/music/
end