Scriptname CannabisWellRestedFXScript extends ActiveMagicEffect  

Message Property CannabisWellRestedMessage Auto

Perk Property RestedWellPerk Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If akCaster == Game.GetPlayer()
		akCaster.AddPerk(RestedWellPerk)
		Utility.Wait(3)
		CannabisWellRestedMessage.Show()
		Utility.WaitGameTime(8)
		akCaster.RemovePerk(RestedWellPerk)
	EndIf
EndEvent