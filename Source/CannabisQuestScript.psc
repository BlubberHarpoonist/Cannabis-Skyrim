Scriptname CannabisQuestScript extends Quest  

Message Property CannabisSkyrimInitializedMessage Auto

FormList Property AAAMothPlantTypes Auto
FormList Property CannabisPlantsList Auto

;GlobalVariable Property CannabisUpdate Auto
GlobalVariable Property CannabisAttractFrequency Auto
GlobalVariable Property CannabisPlantsDying Auto
GlobalVariable Property CannabisNoImageSpaceModifier Auto
GlobalVariable Property CannabisBluntsWrapped Auto
GlobalVariable Property CannabisJointsRolled Auto
GlobalVariable Property CannabisSeedsPlanted Auto
GlobalVariable Property CannabisPlantsHarvested Auto
GlobalVariable Property CannabisBudsHarvested Auto
GlobalVariable Property CannabisNoAnimatingSpells Auto
GlobalVariable Property CannabisNoAnimations Auto
GlobalVariable Property CannabisNoSellingDialogs Auto

Event OnInit()
	If Game.getFormFromFile(0x000D6D, "CannabisUpdate.esp")
		GlobalVariable CannabisUpdate = Game.getFormFromFile(0x000D6D, "CannabisUpdate.esp") as GlobalVariable
		GlobalVariable CannabisUpdateAttractFrequency = Game.getFormFromFile(0x000D62, "CannabisUpdate.esp") as GlobalVariable
		GlobalVariable CannabisUpdateBluntsWrapped = Game.getFormFromFile(0x000D63, "CannabisUpdate.esp") as GlobalVariable
		GlobalVariable CannabisUpdateBudsHarvested = Game.getFormFromFile(0x000D64, "CannabisUpdate.esp") as GlobalVariable
		GlobalVariable CannabisUpdateJointsRolled = Game.getFormFromFile(0x000D65, "CannabisUpdate.esp") as GlobalVariable
		GlobalVariable CannabisUpdateNoAnimatingSpells = Game.getFormFromFile(0x000D66, "CannabisUpdate.esp") as GlobalVariable
		GlobalVariable CannabisUpdateNoAnimations = Game.getFormFromFile(0x000D67, "CannabisUpdate.esp") as GlobalVariable
		GlobalVariable CannabisUpdateNoImageSpaceModifier = Game.getFormFromFile(0x000D68, "CannabisUpdate.esp") as GlobalVariable
		GlobalVariable CannabisUpdateNoSellingDialogs = Game.getFormFromFile(0x000D69, "CannabisUpdate.esp") as GlobalVariable
		GlobalVariable CannabisUpdatePlantsDying = Game.getFormFromFile(0x000D6A, "CannabisUpdate.esp") as GlobalVariable
		GlobalVariable CannabisUpdatePlantsHarvested = Game.getFormFromFile(0x000D6B, "CannabisUpdate.esp") as GlobalVariable
		GlobalVariable CannabisUpdateSeedsPlanted = Game.getFormFromFile(0x000D6C, "CannabisUpdate.esp") as GlobalVariable
		If CannabisUpdate.GetValue() == 1
			;Debug.Notification("Updateflag detected!")
			CannabisAttractFrequency.SetValue(CannabisUpdateAttractFrequency.GetValue())
			CannabisBluntsWrapped.SetValue(CannabisUpdateBluntsWrapped.GetValue())
			CannabisBudsHarvested.SetValue(CannabisUpdateBudsHarvested.GetValue())
			CannabisJointsRolled.SetValue(CannabisUpdateJointsRolled.GetValue())
			CannabisNoAnimatingSpells.SetValue(CannabisUpdateNoAnimatingSpells.GetValue())
			CannabisNoAnimations.SetValue(CannabisUpdateNoAnimations.GetValue())
			CannabisNoImageSpaceModifier.SetValue(CannabisUpdateNoImageSpaceModifier.GetValue())
			CannabisNoSellingDialogs.SetValue(CannabisUpdateNoSellingDialogs.GetValue())
			CannabisPlantsDying.SetValue(CannabisUpdatePlantsDying.GetValue())
			CannabisPlantsHarvested.SetValue(CannabisUpdatePlantsHarvested.GetValue())
			CannabisSeedsPlanted.SetValue(CannabisUpdateSeedsPlanted.GetValue())
			CannabisUpdate.SetValue(0)
		EndIf
	EndIf
	Int iIndex = CannabisPlantsList.GetSize()
	While iIndex > 0
		AAAMothPlantTypes.AddForm(CannabisPlantsList.GetAt(iIndex))
		iIndex -= 1	
	EndWhile
	CannabisSkyrimInitializedMessage.Show()
EndEvent