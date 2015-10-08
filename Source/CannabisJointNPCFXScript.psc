Scriptname CannabisJointNPCFXScript extends activemagiceffect  

Import Game
Import Debug
Import Utility

GlobalVariable Property CannabisNoAnimations Auto

Keyword Property CannabisStoned Auto 
Keyword Property CannabisJoints Auto 
Keyword Property CannabisBlunts Auto 

VisualEffect Property CannabisSmokeEffect Auto
VisualEffect Property CannabisSmokeExhaleEffect Auto

Idle Property IdleStop_Loose Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If CannabisNoAnimations.GetValue() == 0
		if akTarget.IsDead() == 0 && akTarget.IsChild() == 0 && akTarget.GetSitState() == 0 && akTarget.IsInCombat() == 0
			akTarget.setdontmove()
			SendAnimationEvent(akTarget, "CannabisSmokeJoint")
			wait(7.0)
			CannabisSmokeExhaleEffect.Play(akTarget, -1)
			Wait(2)
			CannabisSmokeExhaleEffect.Stop(akTarget)
			akTarget.PlayIdle(IdleStop_Loose)
			akTarget.setdontmove(False)
			akTarget.EvaluatePackage()
		endif
	EndIf
EndEvent