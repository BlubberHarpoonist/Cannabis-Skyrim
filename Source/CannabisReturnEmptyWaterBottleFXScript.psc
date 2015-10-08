Scriptname CannabisReturnEmptyWaterBottleFXScript extends activemagiceffect  

MiscObject Property CannabisWaterBottleEmpty Auto ;Hidden

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If akCaster == Game.GetPlayer()
		akCaster.AddItem(CannabisWaterBottleEmpty)
		dispel()
	EndIf
EndEvent
