Scriptname CannabisAttractedNPCUseBudFXScript extends activemagiceffect  

Import Debug
Import Utility

VisualEffect Property CannabisSmokeEffect Auto
VisualEffect Property CannabisSmokeExhaleEffect Auto

GlobalVariable Property CannabisNoAnimations Auto

Idle Property IdleStop_Loose Auto

VisualEffect Property CannabisFlameEffect Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If akTarget.IsDead() == 0 && akTarget.IsChild() == 0
		If CannabisNoAnimations.GetValue() == 0 && akTarget.GetSitState() == 0 && akTarget.IsInCombat() == 0
			Int intRndInt = Utility.RandomInt(0, 3)
			akTarget.SetHeadTracking(false)
			akTarget.setdontmove()
			If intRndInt == 0
				ActorBase CannabisActorBase = akTarget.GetBaseObject() as ActorBase
				if (CannabisActorBase.GetSex() == 0)
					Debug.SendAnimationEvent(akTarget, "CannabisSmokeLongPipeBone")
				ElseIf (CannabisActorBase.GetSex() == 1)
					Debug.SendAnimationEvent(akTarget, "CannabisSmokeLongPipeBoneFemale")
				endIf
				Utility.Wait(7.0)
				CannabisSmokeExhaleEffect.Play(akTarget, -1)
				Utility.Wait(2)
				CannabisSmokeExhaleEffect.Stop(akTarget)
			ElseIf intRndInt == 1
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
			ElseIf intRndInt == 2
				SendAnimationEvent(akTarget, "CannabisSmokeGourdpipe")
				Wait(7.0)
				CannabisSmokeExhaleEffect.Play(akTarget, -1)
				Wait(2)
				CannabisSmokeExhaleEffect.Stop(akTarget)
			ElseIf intRndInt == 3
				SendAnimationEvent(akTarget, "CannabisSmokeDragonBong")
				wait(7)
				CannabisSmokeExhaleEffect.Play(akTarget, -1)
				Wait(2)
				CannabisSmokeExhaleEffect.Stop(akTarget)
			EndIf
			akTarget.setdontmove(False)
			akTarget.SetHeadTracking(true)
			akTarget.PlayIdle(IdleStop_Loose)
			akTarget.EvaluatePackage()
		EndIf
	endIf
	Dispel()
EndEvent