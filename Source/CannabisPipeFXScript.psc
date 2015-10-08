Scriptname CannabisPipeFXScript extends activemagiceffect  

Import Game
Import Debug
Import Utility

;CannabisQuestScript Property CannabisQuest Auto

VisualEffect Property CannabisFlameEffect Auto
VisualEffect Property CannabisSmokeEffect Auto
VisualEffect Property CannabisSmokeExhaleEffect Auto

;GlobalVariable Property CannabisNoImageSpaceModifier Auto
GlobalVariable Property CannabisNoAnimations Auto

;ImageSpaceModifier Property CannabisISFX Auto

Keyword Property CannabisStoned Auto
Keyword Property CannabisLongpipes Auto
Keyword Property CannabisLongpipeBones Auto
Keyword Property CannabisGourdPipes Auto

MiscObject Property CannabisPipe Auto

Idle Property IdleStop_Loose Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If akCaster == GetPlayer()
		If CannabisNoAnimations.GetValue() == 0
			ForceThirdPerson()
			DisablePlayerControls()
			if CannabisPipe.HasKeyword(CannabisLongpipes)
				SendAnimationEvent(akCaster, "CannabisSmokeLongPipeCrossLeggedEnter")
				Wait(1.5)
				CannabisFlameEffect.Play(akCaster, -1)
				Wait(1.5)
				SendAnimationEvent(akCaster, "CannabisSmokeLongPipeCrossLeggedStartBlaze")
				SendAnimationEvent(akCaster, "CannabisSmokeLongPipeCrossLeggedBlazed")
				CannabisSmokeExhaleEffect.Play(akCaster, -1)
				CannabisFlameEffect.Stop(akCaster)
				Wait(2.0)
				CannabisSmokeExhaleEffect.Stop(akCaster)
				Wait(2.0)
				SendAnimationEvent(akCaster, "CannabisSmokeLongPipeCrossLegged")
				Wait(6.0)
				CannabisSmokeExhaleEffect.Play(akCaster, -1)
				Wait(3.0)
				CannabisSmokeExhaleEffect.Stop(akCaster)
				SendAnimationEvent(akCaster, "CannabisSmokeLongPipeCrossLegged")
				Wait(6.0)
				CannabisSmokeExhaleEffect.Play(akCaster, -1)
				Wait(3.0)
				CannabisSmokeExhaleEffect.Stop(akCaster)
				SendAnimationEvent(akCaster, "CannabisSmokeLongPipeCrossLegged")
				Wait(6.0)
				CannabisSmokeExhaleEffect.Play(akCaster, -1)
				Wait(3.0)
				CannabisSmokeExhaleEffect.Stop(akCaster)
				SendAnimationEvent(akCaster, "CannabisSmokeLongPipeCrossLeggedExit")
				Wait(3.0)
			ElseIf CannabisPipe.HasKeyword(CannabisLongpipeBones)
				ActorBase NPCBase = akCaster.GetBaseObject() as ActorBase
				if (NPCBase.GetSex() == 0)
					SendAnimationEvent(akCaster, "CannabisSmokeLongPipeBone")
					Wait(7.0)
					CannabisSmokeExhaleEffect.Play(akCaster, -1)
					Wait(2)
					CannabisSmokeExhaleEffect.Stop(akCaster)
				ElseIf (NPCBase.GetSex() == 1)
					SendAnimationEvent(akCaster, "CannabisSmokeLongPipeBoneFemale")
					Wait(7.0)
					CannabisSmokeExhaleEffect.Play(akCaster, -1)
					Wait(2)
					CannabisSmokeExhaleEffect.Stop(akCaster)
				endIf
			ElseIf CannabisPipe.HasKeyword(CannabisGourdPipes)
				SendAnimationEvent(akCaster, "CannabisSmokeGourdpipe")
				Wait(7.0)
				CannabisSmokeExhaleEffect.Play(akCaster, -1)
				Wait(2)
				CannabisSmokeExhaleEffect.Stop(akCaster)
			EndIf
			akCaster.PlayIdle(IdleStop_Loose)
			EnablePlayerControls()
			ForceFirstPerson()
		EndIf
		; If CannabisNoImageSpaceModifier.GetValue() == 0
			; CannabisISFX.Apply()
		; EndIf
		akCaster.AddItem(CannabisPipe, 1, True)
	EndIf
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster) 
	; If akCaster == GetPlayer()
		; ;CannabisQuest.CannabisActor.PlayIdle(IdleStop_Loose)
		; ;CannabisQuest.CannabisActor = None	
		; If CannabisNoImageSpaceModifier.GetValue() == 0	
			; CannabisISFX.Remove()
		; EndIf
	; EndIf
endEvent