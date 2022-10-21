function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bullet Note HP' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_test_assets2'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '-0.2'); --Default value is: -0.5, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '500'); --Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
			
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
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
	if noteData == 0 and noteType == 'Bullet Note HP ' then
		characterPlayAnim('boyfriend', 'dodge', false);
			setProperty('boyfriend.specialAnim', false)
	elseif noteData == 1 and noteType == 'Bullet Note HP ' then
		characterPlayAnim('boyfriend', 'dodge', false);
			setProperty('boyfriend.specialAnim', false)
	elseif noteData == 2 and noteType == 'Bullet Note HP ' then
		characterPlayAnim('boyfriend', 'dodge', false);
			setProperty('boyfriend.specialAnim', false)
	elseif noteData == 3 and noteType == 'Bullet Note HP ' then
		characterPlayAnim('boyfriend', 'dodge', false);
			setProperty('boyfriend.specialAnim', false)
	end
	if noteType == 'Bullet Note HP' then
		cameraShake('game', '0.04', '0.06');
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Bullet Note HP' then
		-- put something here if you want
	end
end