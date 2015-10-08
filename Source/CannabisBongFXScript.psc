Scriptname CannabisBongFXScript extends activemagiceffect  

Import Game
Import Debug
Import Utility

Sound Property CannabisBongSound Auto

;GlobalVariable Property CannabisNoImageSpaceModifier Auto
GlobalVariable Property CannabisNoAnimations Auto

;ImageSpaceModifier Property CannabisISFX Auto

VisualEffect Property CannabisSmokeExhaleEffect Auto

Keyword Property CannabisStoned Auto
;Keyword Property CannabisDragonBongs Auto

MiscObject Property CannabisBong Auto

Idle Property IdleStop_Loose Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	If akCaster == GetPlayer()
		If CannabisNoAnimations.GetValue() == 0
			ForceThirdPerson()
			DisablePlayerControls()
			SendAnimationEvent(akCaster, "CannabisSmokeDragonBong")
			wait(3)
			int instanceID = CannabisBongSound.play(akCaster)          ; play mySFX sound from my self
			Sound.SetInstanceVolume(instanceID, 1)  ; 0.5 play half volume
			wait(6)
			CannabisSmokeExhaleEffect.Play(akCaster, -1)
			Wait(2)
			CannabisSmokeExhaleEffect.Stop(akCaster)
			akCaster.PlayIdle(IdleStop_Loose)
			EnablePlayerControls()
			ForceFirstPerson()
		EndIf
		; If CannabisNoImageSpaceModifier.GetValue() == 0
			; CannabisISFX.Apply()
		; EndIf
		akCaster.AddItem(CannabisBong, 1, True)
	EndIf
EndEvent

; Event OnEffectFinish(Actor akTarget, Actor akCaster) 
	; If akCaster == GetPlayer()
		; If CannabisNoImageSpaceModifier.GetValue() == 0	
			; CannabisISFX.Remove()
		; EndIf
	; EndIf
; endEvent