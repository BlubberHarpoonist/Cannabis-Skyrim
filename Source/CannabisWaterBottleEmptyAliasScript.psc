Scriptname CannabisWaterBottleEmptyAliasScript extends ReferenceAlias  

Potion Property CannabisWaterBottle Auto

MiscObject Property CannabisWaterBottleEmpty Auto

FormList Property CannabisWaterSourceList Auto

Event OnObjectEquipped(Form akBaseItem, ObjectReference akItemReference)
	if akBaseItem == CannabisWaterBottleEmpty
		Actor akActor = Game.GetPlayer()
		if akActor.IsSneaking()
			If Game.FindClosestReferenceOfAnyTypeInListFromRef(CannabisWaterSourceList, akActor, 300.0) != None
				akItemReference.Disable()
				akActor.UnEquipItem(CannabisWaterBottleEmpty)
				akActor.RemoveItem(CannabisWaterBottleEmpty, 1, True)
				akActor.AddItem(CannabisWaterBottle)
				akItemReference.Delete()
			EndIf
		EndIf
	EndIf
EndEvent

; Event OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
	; if akBaseItem == CannabisWaterBottleEmpty
		; if !akDestContainer
			; If Weather.GetSkyMode() != 1
				; RegisterForSingleUpdate(10)
			; EndIf
			; ; If Game.FindClosestReferenceOfAnyTypeInListFromRef(CannabisWaterSourceList, Game.GetPlayer(), 300.0) != None
				; ; Utility.Wait(1)
				; ; akItemReference.PlaceAtMe(CannabisWaterBottle)
				; ; akItemReference.Disable()
				; ; akItemReference.Delete()
			; ; EndIf
		; EndIf
	; EndIf
; endEvent

; Event OnUpdate()
	; Weather CurrentWeather = Weather.GetCurrentWeather()
	; If CurrentWeather.GetClassification() == 2
		; Utility.Wait(10)
		; RainRefillsWaterBottleEmpty()
	; Else
		; RegisterForSingleUpdate(10)
	; EndIf
; EndEvent

; Function RainRefillsWaterBottleEmpty()
	; ObjectReference akItemReference = Self.GetReference()
	; akItemReference.PlaceAtMe(CannabisWaterBottle)
	; akItemReference.Disable()
	; akItemReference.Delete()
	; Return
; EndFunction