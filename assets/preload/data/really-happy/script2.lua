local strumangle1 = 0
local strumangle2 = 0
local strumangle3 = 0
local strumangle4 = 0
local strumangle1o = 0
local strumangle2o = 0
local strumangle3o = 0
local strumangle4o = 0
function onUpdate(elapsed)
songPos = getSongPosition()
local currentBeat = (songPos/1000)*(curBpm/60)
noteTweenX('defaultOpponentStrumX0', 0, defaultOpponentStrumX0 - 80*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
noteTweenX('defaultOpponentStrumX1', 1, defaultOpponentStrumX1 - 80*math.sin((currentBeat+1*0.25)*math.pi), 0.5)
noteTweenX('defaultOpponentStrumX2', 2, defaultOpponentStrumX2 - 80*math.sin((currentBeat+2*0.25)*math.pi), 0.5)
noteTweenX('defaultOpponentStrumX3', 3, defaultOpponentStrumX3 - 80*math.sin((currentBeat+3*0.25)*math.pi), 0.5)
noteTweenX('defaultPlayerStrumX0', 4, defaultPlayerStrumX0 - 80*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenX('defaultPlayerStrumX1', 5, defaultPlayerStrumX1 - 80*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
noteTweenX('defaultPlayerStrumX2', 6, defaultPlayerStrumX2 - 80*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
noteTweenX('defaultPlayerStrumX3', 7, defaultPlayerStrumX3 - 80*math.sin((currentBeat+7*0.25)*math.pi), 0.5)
noteTweenAngle('strumangle1', 4, strumangle1 - 80*math.sin((currentBeat+4*0.25)*math.pi), 0.5)
noteTweenAngle('strumangle2', 5, strumangle2 - 80*math.sin((currentBeat+5*0.25)*math.pi), 0.5)
noteTweenAngle('strumangle3', 6, strumangle3 - 80*math.sin((currentBeat+6*0.25)*math.pi), 0.5)
noteTweenAngle('strumangle4', 7, strumangle4 - 80*math.sin((currentBeat+7*0.25)*math.pi), 0.5)
noteTweenAngle('strumangle1o', 0, strumangle1o - 80*math.sin((currentBeat+0*0.25)*math.pi), 0.5)
noteTweenAngle('strumangle2o', 1, strumangle2o - 80*math.sin((currentBeat+1*0.25)*math.pi), 0.5)
noteTweenAngle('strumangle3o', 2, strumangle3o - 80*math.sin((currentBeat+2*0.25)*math.pi), 0.5)
noteTweenAngle('strumangle4o', 3, strumangle4o - 80*math.sin((currentBeat+3*0.25)*math.pi), 0.5)
end