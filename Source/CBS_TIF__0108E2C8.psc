;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname CBS_TIF__0108E2C8 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
game.getplayer().removeItem(CannabisEdible, 1)
game.getplayer().addItem(Gold001, intPrice)
akSpeaker.addItem(CannabisDealBlockerToken, 1, True)
akSpeaker.addSpell(CannabisAttractedNPCUseBudAbility)
CannabisNPCAttractedRefAlias.Clear()
akSpeaker.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

MiscObject Property Gold001  Auto  

Armor Property CannabisDealBlockerToken  Auto  

Potion Property CannabisEdible  Auto  

Int Property intPrice  Auto 

SPELL Property CannabisAttractedNPCUseBudAbility  Auto  

ReferenceAlias Property CannabisNPCAttractedRefAlias  Auto  
