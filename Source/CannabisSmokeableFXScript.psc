Scriptname CannabisSmokeableFXScript extends activemagiceffect  

Import Game
Import Debug
Import Utility

;GlobalVariable Property CannabisNoImageSpaceModifier Auto
GlobalVariable Property CannabisNoAnimations Auto
GlobalVariable Property CannabisNoSellingDialogs Auto

;ImageSpaceModifier Property CannabisISFX Auto

Armor Property CannabisSmokeableWearable Auto

Keyword Property CannabisStoned Auto 
Keyword Property CannabisJoints Auto 
Keyword Property CannabisBlunts Auto 

VisualEffect Property CannabisSmokeEffect Auto
VisualEffect Property CannabisSmokeExhaleEffect Auto

;Idle Property CannabisSmokingIdle Auto
Idle Property IdleStop_Loose Auto

Spell Property CannabisAttractNPCAbility Auto

Sound Property CannabisSound Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If akCaster == GetPlayer()
		DisablePlayerControls()
		If CannabisNoAnimations.GetValue() == 0
			ForceThirdPerson()
			if CannabisSmokeableWearable.HasKeyword(CannabisBlunts)
				SendAnimationEvent(akCaster, "CannabisSmokeBlunt")
			ElseIf CannabisSmokeableWearable.HasKeyword(CannabisJoints)
				SendAnimationEvent(akCaster, "CannabisSmokeJoint")
			EndIf
			wait(3)
			;int instanceID = CannabisSound.play(akCaster)          ; play mySFX sound from my self
			;Sound.SetInstanceVolume(instanceID, 1)  ; 0.5 play half volume
			wait(3.0)
			CannabisSmokeExhaleEffect.Play(akTarget, -1)
			Wait(3.0)
			CannabisSmokeExhaleEffect.Stop(akTarget)
			akCaster.PlayIdle(IdleStop_Loose)
			ForceFirstPerson()
		EndIf
		akCaster.EquipItem(CannabisSmokeableWearable, True, False)
		CannabisSmokeEffect.Play(akCaster, -1)
		; If CannabisNoImageSpaceModifier.GetValue() == 0
			; CannabisISFX.Apply()
		; EndIf	
		If CannabisNoSellingDialogs.GetValue() == 0
			akCaster.AddSpell(CannabisAttractNPCAbility, False)
		EndIf
		EnablePlayerControls()
	EndIf
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster) 
	If akCaster == GetPlayer()
		; If CannabisNoImageSpaceModifier.GetValue() == 0	
			; CannabisISFX.Remove()
		; EndIf
		akCaster.UnEquipItem(CannabisSmokeableWearable, False, True)
		CannabisSmokeEffect.Stop(akCaster)
		akCaster.RemoveItem(CannabisSmokeableWearable, 1, True)
		if akCaster.HasSpell(CannabisAttractNPCAbility)
			akCaster.RemoveSpell(CannabisAttractNPCAbility)	
		EndIf
	EndIf
endEvent