Scriptname CannabisLongPipeBoneNPCFXScript extends activemagiceffect  

VisualEffect Property CannabisSmokeEffect Auto
VisualEffect Property CannabisSmokeExhaleEffect Auto

GlobalVariable Property CannabisNoAnimations Auto

Idle Property IdleStop_Loose Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If akTarget.IsDead() == 0 && akTarget.IsChild() == 0
		if CannabisNoAnimations.GetValue() == 0 && akTarget.GetSitState() == 0 && akTarget.IsInCombat() == 0
			akTarget.SetHeadTracking(false)
			akTarget.setdontmove()
			ActorBase CannabisActorBase = akTarget.GetBaseObject() as ActorBase
			if (CannabisActorBase.GetSex() == 0)
				Debug.SendAnimationEvent(akTarget, "CannabisSmokeLongPipeBone")
			ElseIf (CannabisActorBase.GetSex() == 1)
				Debug.SendAnimationEvent(akTarget, "CannabisSmokeLongPipeBoneFemale")
			endIf
			Utility.Wait(6.0)
			CannabisSmokeExhaleEffect.Play(akTarget, -1)
			Utility.Wait(3)
			CannabisSmokeExhaleEffect.Stop(akTarget)
			akTarget.setdontmove(False)
			akTarget.SetHeadTracking(true)
			akTarget.PlayIdle(IdleStop_Loose)
			akTarget.EvaluatePackage()
		EndIf
	endIf
EndEvent