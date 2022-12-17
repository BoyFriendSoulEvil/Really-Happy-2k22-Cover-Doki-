function onUpdate(elapsed)

    if bfName == 'bf' or 'bf1' or 'bf-winner' or 'tunnel-bf' then --replace the name for your character name
        for i=0,4,1 do
            setPropertyFromGroup('opponentStrums', i, 'texture', 'MIKI')
        end
        for i = 0, getProperty('unspawnNotes.length')-1 do
            if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
                setPropertyFromGroup('unspawnNotes', i, 'texture', 'MIKI'); --Change texture
            end
        end
    end
end