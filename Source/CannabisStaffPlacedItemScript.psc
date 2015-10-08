Scriptname CannabisStaffPlacedItemScript extends ObjectReference  

;Import 
;Formlist Property CannabisStaffPlantsList Auto
Formlist Property CannabisSeedStaffPlanterList Auto

Event OnInit()
	Int rndInt = Utility.RandomInt(0, CannabisSeedStaffPlanterList.GetSize() - 1)
	ObjectReference CannabisSeed = Self.PlaceAtMe(CannabisSeedStaffPlanterList.GetAt(rndInt), 1, False, True)
	rndInt = Utility.RandomInt(1, 359)
	CannabisSeed.SetScale(2)
	CannabisSeed.SetAngle(0.0, 0.0, rndInt)
	CannabisSeed.Enable()
	; While !CannabisSeed.Is3DLoaded()
		; Utility.Wait(0.1)
	; EndWhile
	Self.Disable()
	Self.Delete()
EndEvent

; Event OnInit()
	; Int intRndPlant = Utility.RandomInt(0, CannabisStaffPlantsList.GetSize() - 1)
	; ObjectReference CannabisPlant = self.PlaceAtMe(CannabisStaffPlantsList.GetAt(intRndPlant), 1, false, true)
	; Int rndInt = Utility.RandomInt(1, 359)
	; CannabisPlant.SetAngle(0.0, 0.0, rndInt)
	; Float rndFloat = Utility.RandomFloat(0.75, 1.5)
	; CannabisPlant.SetScale(rndFloat)
	; CannabisPlant.Enable()
	; Utility.Wait(120)
	; CannabisPlant.Disable()
	; CannabisPlant.Delete()
	; Self.Disable()
	; Self.Delete()
; EndEvent