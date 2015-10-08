Scriptname CannabisAttractNPCFXScript extends activemagiceffect  

Quest Property CannabisAttractNPCQuest Auto
 
Event OnEffectStart(Actor akTarget, Actor akCaster)
	CannabisAttractNPCQuest.Start()
	CannabisAttractNPCQuest.SetStage(10)
	;RegisterForSingleUpdate(1)
EndEvent
 
; Event OnUpdate()
	; CannabisAliasesQuest.SetStage(0)
	; CannabisAliasesQuest.Stop()
	; Utility.Wait(1)
	; CannabisAliasesQuest.Start()
	; CannabisAliasesQuest.SetStage(10)
	; ;CannabisPlayer.RemoveSpell(CannabisAttractNPCAbility)
	; RegisterForSingleUpdate(1)
; EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	CannabisAttractNPCQuest.SetStage(0)
	CannabisAttractNPCQuest.Stop()
	;UnregisterForUpdate()
EndEvent