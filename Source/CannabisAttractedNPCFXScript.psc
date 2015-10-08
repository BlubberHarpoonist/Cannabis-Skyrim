Scriptname CannabisAttractedNPCFXScript extends activemagiceffect  

;Quest Property CannabisAliasesQuest Auto
Spell Property CannabisAttractedNPCActiveAbility Auto
;ReferenceAlias Property CannabisAttractedNPCAlias Auto
;Armor Property CannabisDealBlockerToken Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	akTarget.AddSpell(CannabisAttractedNPCActiveAbility)
EndEvent