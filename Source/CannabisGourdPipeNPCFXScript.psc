Scriptname CannabisGourdPipeNPCFXScript extends activemagiceffect  

Import Debug
Import Utility

Idle Property IdleStop_Loose Auto

VisualEffect Property CannabisSmokeExhaleEffect Auto

GlobalVariable Property CannabisNoAnimations Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If CannabisNoAnimations.GetValue() == 0
		if akTarget.IsDead() == 0 && akTarget.IsChild() == 0 && akTarget.GetSitState() == 0 && akTarget.IsInCombat() == 0
			akTarget.setdontmove()
			SendAnimationEvent(akTarget, "CannabisSmokeGourdpipe")
			Wait(7.0)
			CannabisSmokeExhaleEffect.Play(akTarget, -1)
			Wait(2)
			CannabisSmokeExhaleEffect.Stop(akTarget)
			akTarget.PlayIdle(IdleStop_Loose)
			akTarget.setdontmove(False)
			akTarget.EvaluatePackage()
		EndIf
	EndIf
EndEvent