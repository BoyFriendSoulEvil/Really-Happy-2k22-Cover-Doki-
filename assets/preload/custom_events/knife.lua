function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'knife' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'knife'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'HURTnoteSplashes'); -- change splash
			if getPropertyFromGroup('unspawnNotes', i, 'mustnotPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'knife' then
		-- put something here if you want
		makeLuaSprite('image', 'JS 3', 0, 0);
		addLuaSprite('image', true);
		doTweenColor('hello', 'image', 'FFFFFFFF', 0.1, 'quartIn');
    		setObjectCamera('image', 'other');
   		runTimer('wait', 0.5);
		bruh = getProperty('health');
		setProperty('health', 0.25);
		playSound('TailsScreamLOL', 0.5);
		
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'knife' then
		-- put something here if you want

	end
end

function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'wait' then
    doTweenAlpha('byebye', 'image', 0, 0.1, 'linear');
    end
end

function onTweenCompleted(tag)
    if tag == 'byebye' then
    removeLuaSprite('image', true);
    end
end