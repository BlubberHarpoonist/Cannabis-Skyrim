Scriptname CannabisSmokeableNPCFXScript extends activemagiceffect  

Import Game
Import Debug
Import Utility

Armor Property CannabisSmokeableNPC Auto
Armor Property CannabisJointWearableExpertNPC Auto
Armor Property CannabisBluntWearableExpertNPC Auto

; Keyword Property CannabisStoned Auto 
; Keyword Property CannabisJoints Auto 
; Keyword Property CannabisBlunts Auto 

Sound Property CannabisSound Auto

VisualEffect Property CannabisSmokeEffect Auto
VisualEffect Property CannabisSmokeExhaleEffect Auto

GlobalVariable Property CannabisNoAnimations Auto

Idle Property IdleStop_Loose Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If akTarget.IsDead() == 0 && akTarget.IsChild() == 0
		if CannabisNoAnimations.GetValue() == 0 && akTarget.GetSitState() == 0 && akTarget.IsInCombat() == 0
			akTarget.SetHeadTracking(false)
			akTarget.setdontmove()
			If CannabisSmokeableNPC == CannabisBluntWearableExpertNPC
				SendAnimationEvent(akTarget, "CannabisSmokeBlunt")
			ElseIf CannabisSmokeableNPC == CannabisJointWearableExpertNPC
				SendAnimationEvent(akTarget, "CannabisSmokeJoint")
			EndIf
			wait(3)
			;int instanceID = CannabisSound.play(akCaster)          ; play mySFX sound from my self
			;Sound.SetInstanceVolume(instanceID, 1)  ; 0.5 play half volume
			wait(3.0)
			CannabisSmokeExhaleEffect.Play(akTarget, -1)
			Wait(3.0)
			CannabisSmokeExhaleEffect.Stop(akTarget)
			akTarget.PlayIdle(IdleStop_Loose)
			akTarget.setdontmove(False)
			akTarget.SetHeadTracking(true)
			akTarget.EvaluatePackage()
		endif
		; if akTarget.GetItemCount(CannabisSmokeableNPC) < 1
			; akTarget.AddItem(CannabisSmokeableNPC)
			; Utility.wait(0.1)
		; EndIf
		akTarget.EquipItem(CannabisSmokeableNPC)
		CannabisSmokeEffect.Play(akTarget, -1)
		Utility.Wait(180)
		CannabisSmokeEffect.Stop(akTarget)
		akTarget.UnEquipItem(CannabisSmokeableNPC)
		akTarget.RemoveItem(CannabisSmokeableNPC)
		Dispel()
	EndIf
EndEvent