;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 8
Scriptname CBS_TIF__010284A2 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_7
Function Fragment_7(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
game.getplayer().removeItem(CannabisSmokeable, 1)
game.getplayer().addItem(Gold001, intPrice)
akSpeaker.addItem(CannabisBluntWearableNPC, 1, True)
akSpeaker.addItem(CannabisDealBlockerToken, 1, True)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

MiscObject Property Gold001  Auto  

Armor Property CannabisDealBlockerToken  Auto  

Potion Property CannabisSmokeable  Auto 

Int Property intPrice  Auto  

Armor Property CannabisBluntWearableNPC  Auto  
