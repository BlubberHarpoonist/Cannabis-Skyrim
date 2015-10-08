Scriptname CannabisLongPipeNPCFXScript extends activemagiceffect  

Import Debug
Import Utility

Idle Property IdleStop_Loose Auto

VisualEffect Property CannabisFlameEffect Auto
VisualEffect Property CannabisSmokeExhaleEffect Auto

GlobalVariable Property CannabisNoAnimations Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If CannabisNoAnimations.GetValue() == 0
		if akTarget.IsDead() == 0 && akTarget.IsChild() == 0 && akTarget.GetSitState() == 0 && akTarget.IsInCombat() == 0
			akTarget.setdontmove()
			SendAnimationEvent(akTarget, "CannabisSmokeLongPipeCrossLeggedEnter")
			Wait(1.5)
			CannabisFlameEffect.Play(akTarget, -1)
			Wait(1.5)
			SendAnimationEvent(akTarget, "CannabisSmokeLongPipeCrossLeggedStartBlaze")
			SendAnimationEvent(akTarget, "CannabisSmokeLongPipeCrossLeggedBlazed")
			CannabisSmokeExhaleEffect.Play(akTarget, -1)
			CannabisFlameEffect.Stop(akTarget)
			Wait(2.0)
			CannabisSmokeExhaleEffect.Stop(akTarget)
			Wait(2.0)
			SendAnimationEvent(akTarget, "CannabisSmokeLongPipeCrossLegged")
			Wait(6.0)
			CannabisSmokeExhaleEffect.Play(akTarget, -1)
			Wait(3.0)
			CannabisSmokeExhaleEffect.Stop(akTarget)
			SendAnimationEvent(akTarget, "CannabisSmokeLongPipeCrossLegged")
			Wait(6.0)
			CannabisSmokeExhaleEffect.Play(akTarget, -1)
			Wait(3.0)
			CannabisSmokeExhaleEffect.Stop(akTarget)
			SendAnimationEvent(akTarget, "CannabisSmokeLongPipeCrossLegged")
			Wait(6.0)
			CannabisSmokeExhaleEffect.Play(akTarget, -1)
			Wait(3.0)
			CannabisSmokeExhaleEffect.Stop(akTarget)
			SendAnimationEvent(akTarget, "CannabisSmokeLongPipeCrossLeggedExit")
			Wait(3.0)
			akTarget.PlayIdle(IdleStop_Loose)
			akTarget.setdontmove(False)
			akTarget.EvaluatePackage()
		EndIf
	EndIf
EndEvent