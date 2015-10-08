Scriptname CannabisAttractedNPCActiveFXScript extends activemagiceffect  

ReferenceAlias Property CannabisAttractedNPCRefAlias Auto
GlobalVariable Property CannabisAttractFrequency Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	Int rndInt = Utility.RandomInt(0, 100)
	If rndInt <= CannabisAttractFrequency.GetValue()
		CannabisAttractedNPCRefAlias.ForceRefTo(akTarget)
		CannabisAttractedNPCRefAlias.TryToEvaluatePackage()
	EndIf
EndEvent