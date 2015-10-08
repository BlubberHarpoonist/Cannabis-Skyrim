Scriptname CannabisBluntNPCFXScript extends activemagiceffect  

Import Game
Import Debug
Import Utility

Keyword Property CannabisStoned Auto 
Keyword Property CannabisJoints Auto 
Keyword Property CannabisBlunts Auto 

Sound Property CannabisSound Auto

VisualEffect Property CannabisSmokeEffect Auto
VisualEffect Property CannabisSmokeExhaleEffect Auto

GlobalVariable Property CannabisNoAnimations Auto

Idle Property IdleStop_Loose Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If CannabisNoAnimations.GetValue() == 0
		if akTarget.IsDead() == 0 && akTarget.IsChild() == 0 && akTarget.GetSitState() == 0
			akTarget.setdontmove()
			SendAnimationEvent(akTarget, "CannabisSmokeBlunt")
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
		endif
	EndIf
EndEvent