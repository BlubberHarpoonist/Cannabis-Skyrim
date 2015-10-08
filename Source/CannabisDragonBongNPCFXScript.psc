Scriptname CannabisDragonBongNPCFXScript extends activemagiceffect  

Import Debug
Import Utility

Idle Property IdleStop_Loose Auto

Sound Property CannabisSound Auto

VisualEffect Property CannabisSmokeExhaleEffect Auto

GlobalVariable Property CannabisNoAnimations Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If CannabisNoAnimations.GetValue() == 0
		if akTarget.IsDead() == 0 && akTarget.IsChild() == 0 && akTarget.GetSitState() == 0 && akTarget.IsInCombat() == 0
			akTarget.setdontmove()
			SendAnimationEvent(akTarget, "CannabisSmokeDragonBong")
			wait(3)
			int instanceID = CannabisSound.play(akCaster)          ; play mySFX sound from my self
			Sound.SetInstanceVolume(instanceID, 1)  ; 0.5 play half volume
			wait(6.0)
			CannabisSmokeExhaleEffect.Play(akTarget, -1)
			Wait(2)
			CannabisSmokeExhaleEffect.Stop(akTarget)
			akTarget.PlayIdle(IdleStop_Loose)
			akTarget.setdontmove(False)
			akTarget.EvaluatePackage()
		EndIf
	endif
EndEvent