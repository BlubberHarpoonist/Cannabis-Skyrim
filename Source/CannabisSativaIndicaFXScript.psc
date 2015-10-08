Scriptname CannabisSativaIndicaFXScript extends activemagiceffect  

ImageSpaceModifier Property CannabisISFX Auto

GlobalVariable Property CannabisNoImageSpaceModifier Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If akCaster == Game.GetPlayer()
		If CannabisNoImageSpaceModifier.GetValue() == 0
			CannabisISFX.Apply()
		EndIf	
	EndIf
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster) 
	CannabisISFX.Remove()
endEvent