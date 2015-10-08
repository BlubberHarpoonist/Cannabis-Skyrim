Scriptname CannabisFXScript extends ActiveMagicEffect  

GlobalVariable Property CannabisNoImageSpaceModifier Auto

ImageSpaceModifier Property CannabisISFX Auto

;Keyword Property CannabisStoned Auto

; Event OnEffectStart(Actor akTarget, Actor akCaster)
	; If akCaster == Game.GetPlayer()
		; If CannabisNoImageSpaceModifier.GetValue() == 0
			; CannabisISFX.Apply()
		; EndIf
	; EndIf
; EndEvent

; Event OnEffectFinish(Actor akTarget, Actor akCaster) 
	; If akCaster == Game.GetPlayer()
		; If CannabisNoImageSpaceModifier.GetValue() == 0
			; CannabisISFX.Remove()
		; EndIf
	; EndIf
; endEvent