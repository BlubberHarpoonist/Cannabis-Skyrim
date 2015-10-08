Scriptname CannabisOptionsRefAliasScript extends ReferenceAlias  

Armor Property CannabisSatchel Auto

Keyword Property CannabisStoned Auto
Keyword Property CannabisIndicaStoned Auto
Keyword Property CannabisSativaStoned Auto

ImageSpaceModifier Property CannabisIndicaISFX Auto
ImageSpaceModifier Property CannabisSativaISFX Auto

Message Property CannabisOptionsMessage Auto
Message Property CannabisOptionsGameplayMessage Auto
Message Property CannabisOptionsGameplaySellingMessage Auto
Message Property CannabisOptionsMaintenanceMessage Auto
Message Property CannabisOptionsStatsMessage Auto
Message Property CannabisConfirmMessage Auto
Message Property CannabisUninstalledMessage Auto

MiscObject Property CannabisOptions Auto
MiscObject Property CannabisWaterBottleEmpty Auto

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

Spell Property CannabisSmokeLongpipeNPCSpell Auto
Spell Property CannabisSmokeLongpipeBoneNPCSpell Auto
Spell Property CannabisSmokeDragonBongNPCSpell Auto
Spell Property CannabisSmokeGourdpipeNPCSpell Auto
Spell Property CannabisSmokeJointNPCSpell Auto
Spell Property CannabisSmokeBluntNPCSpell Auto
Spell Property CannabisAttractNPCAbility Auto

Quest Property CannabisQuest Auto
Quest Property CannabisAttractNPCQuest Auto

;Event OnObjectEquipped(Form akBaseItem, ObjectReference akItemReference)
Event OnEquipped(Actor akActor)
	Game.DisablePlayerControls(abMenu = True)
	Game.EnablePlayerControls(abMenu = True)
	OptionsMenu()
EndEvent

Function OptionsMenu()
	If CannabisQuest.IsRunning()
		Int	Button = CannabisOptionsMessage.Show()
		If Button == 0
			GameplayMenu()
		ElseIf Button == 1
			MaintenanceMenu()
		ElseIf Button == 2
			StatisticsMenu()
		ElseIf Button == 3
			Return
		EndIf
	EndIf
EndFunction

Function StatisticsMenu()
	Message StatsMessage
	StatsMessage = CannabisOptionsStatsMessage
	Int Button = StatsMessage.Show(CannabisBluntsWrapped.GetValue(), \
								   CannabisJointsRolled.GetValue(), \
							       CannabisSeedsPlanted.GetValue(), \
								   CannabisPlantsHarvested.GetValue(), \
								   CannabisBudsHarvested.GetValue())
							       ;CannabisProductsSold.GetValue())
 	If Button == 0
		OptionsMenu()
 	ElseIf Button == 1
		StatsResetConfirmMenu()
		Return
	EndIf
EndFunction

Function StatsResetConfirmMenu()
	Int Button = CannabisConfirmMessage.Show()
	If Button == 0
		CannabisBluntsWrapped.SetValue(0)
		CannabisJointsRolled.SetValue(0)
		CannabisSeedsPlanted.SetValue(0)
		CannabisPlantsHarvested.SetValue(0)
		CannabisBudsHarvested.SetValue(0)
		StatisticsMenu()
	ElseIf Button == 1
		StatisticsMenu()
	EndIf
EndFunction

Function GameplayMenu()
	Actor CannabisPlayer = Game.GetPlayer()
	Int Button = CannabisOptionsGameplayMessage.Show()
	If Button == 0
		GameplaySellingMenu()
	ElseIf Button == 1
		CannabisPlantsDying.SetValue(0)
	ElseIf Button == 2
		CannabisPlantsDying.SetValue(1)
	ElseIf Button == 3
		CannabisNoImageSpaceModifier.SetValue(1)
		If CannabisPlayer.HasEffectKeyword(CannabisStoned)
			If CannabisPlayer.HasEffectKeyword(CannabisIndicaStoned) && CannabisPlayer.HasEffectKeyword(CannabisSativaStoned)
				CannabisIndicaISFX.Remove()
				CannabisSativaISFX.Remove()
			ElseIf CannabisPlayer.HasEffectKeyword(CannabisIndicaStoned)
				CannabisIndicaISFX.Remove()
			ElseIf CannabisPlayer.HasEffectKeyword(CannabisSativaStoned)
				CannabisSativaISFX.Remove()
			EndIf
		EndIf
	ElseIf Button == 4
		CannabisNoImageSpaceModifier.SetValue(0)
		If CannabisPlayer.HasEffectKeyword(CannabisStoned)
			If CannabisPlayer.HasEffectKeyword(CannabisIndicaStoned) && CannabisPlayer.HasEffectKeyword(CannabisSativaStoned)
				CannabisIndicaISFX.Apply()
				CannabisSativaISFX.Apply()
			ElseIf CannabisPlayer.HasEffectKeyword(CannabisIndicaStoned)
				CannabisIndicaISFX.Apply()
			ElseIf CannabisPlayer.HasEffectKeyword(CannabisSativaStoned)
				CannabisSativaISFX.Apply()
			EndIf
		EndIf
	ElseIf Button == 5
		CannabisNoAnimations.SetValue(1)
		if CannabisNoAnimatingSpells.GetValue() == 0
			CannabisPlayer.RemoveSpell(CannabisSmokeLongpipeNPCSpell)
			CannabisPlayer.RemoveSpell(CannabisSmokeLongpipeBoneNPCSpell)
			CannabisPlayer.RemoveSpell(CannabisSmokeDragonBongNPCSpell)
			CannabisPlayer.RemoveSpell(CannabisSmokeGourdpipeNPCSpell)
			CannabisPlayer.RemoveSpell(CannabisSmokeJointNPCSpell)
			CannabisPlayer.RemoveSpell(CannabisSmokeBluntNPCSpell)
		EndIf
	ElseIf Button == 6
		CannabisNoAnimations.SetValue(0)
		if CannabisNoAnimatingSpells.GetValue() == 0
			CannabisPlayer.AddSpell(CannabisSmokeLongpipeNPCSpell, False)
			CannabisPlayer.AddSpell(CannabisSmokeLongpipeBoneNPCSpell, False)
			CannabisPlayer.AddSpell(CannabisSmokeDragonBongNPCSpell, False)
			CannabisPlayer.AddSpell(CannabisSmokeGourdpipeNPCSpell, False)
			CannabisPlayer.AddSpell(CannabisSmokeJointNPCSpell, False)
			CannabisPlayer.AddSpell(CannabisSmokeBluntNPCSpell, False)
		EndIf
	ElseIf Button == 7
		CannabisNoAnimatingSpells.SetValue(1)
		CannabisPlayer.RemoveSpell(CannabisSmokeLongpipeNPCSpell)
		CannabisPlayer.RemoveSpell(CannabisSmokeLongpipeBoneNPCSpell)
		CannabisPlayer.RemoveSpell(CannabisSmokeDragonBongNPCSpell)
		CannabisPlayer.RemoveSpell(CannabisSmokeGourdpipeNPCSpell)
		CannabisPlayer.RemoveSpell(CannabisSmokeJointNPCSpell)
		CannabisPlayer.RemoveSpell(CannabisSmokeBluntNPCSpell)
	ElseIf Button == 8
		CannabisNoAnimatingSpells.SetValue(0)
		CannabisPlayer.AddSpell(CannabisSmokeLongpipeNPCSpell, False)
		CannabisPlayer.AddSpell(CannabisSmokeLongpipeBoneNPCSpell, False)
		CannabisPlayer.AddSpell(CannabisSmokeDragonBongNPCSpell, False)
		CannabisPlayer.AddSpell(CannabisSmokeGourdpipeNPCSpell, False)
		CannabisPlayer.AddSpell(CannabisSmokeJointNPCSpell, False)
		CannabisPlayer.AddSpell(CannabisSmokeBluntNPCSpell, False)
	ElseIf Button == 9
		OptionsMenu()
		Return
	EndIf
	If Button < 9 ; If Button != 9
		GameplayMenu()
	EndIf
EndFunction

Function GameplaySellingMenu()
	Int Button = CannabisOptionsGameplaySellingMessage.Show()
	If Button == 0 || Button == 1
		CannabisAttractFrequency.SetValue(1)
		if CannabisAttractNPCQuest.IsRunning() && CannabisAttractNPCQuest.GetStage() == 10
			CannabisAttractNPCQuest.Stop()
			CannabisAttractNPCQuest.Start()
			CannabisAttractNPCQuest.SetStage(10)
		EndIf
	ElseIf Button == 2 || Button == 3
		CannabisAttractFrequency.SetValue(10)
		if CannabisAttractNPCQuest.IsRunning() && CannabisAttractNPCQuest.GetStage() == 10
			CannabisAttractNPCQuest.Stop()
			CannabisAttractNPCQuest.Start()
			CannabisAttractNPCQuest.SetStage(10)
		EndIf
	ElseIf Button == 4 || Button == 5
		CannabisAttractFrequency.SetValue(25)
		if CannabisAttractNPCQuest.IsRunning() && CannabisAttractNPCQuest.GetStage() == 10
			CannabisAttractNPCQuest.Stop()
			CannabisAttractNPCQuest.Start()
			CannabisAttractNPCQuest.SetStage(10)
		EndIf
	ElseIf Button == 6
		CannabisNoSellingDialogs.SetValue(1)	
		if CannabisAttractNPCQuest.IsRunning() && CannabisAttractNPCQuest.GetStage() == 10
			Game.GetPlayer().RemoveSpell(CannabisAttractNPCAbility)
			CannabisAttractNPCQuest.Stop()
		EndIf
	ElseIf Button == 7
		CannabisNoSellingDialogs.SetValue(0)
	ElseIf Button == 8
		Return
	EndIf
	If Button < 8
		GameplaySellingMenu()
	EndIf
EndFunction

Function MaintenanceMenu()
	Int Button = CannabisOptionsMaintenanceMessage.Show()
	If Button == 0
		; Game.DisablePlayerControls()
		; Actor myPlayer = Game.GetPlayer()
		; Int ObjectCount = myPlayer.GetItemCount(CannabisSatchel)
		; myPlayer.RemoveItem(CannabisSatchel, ObjectCount, True)
		; ObjectReference ObjectREF = myPlayer.AddItem(CannabisSatchel, ObjectCount, True)
		; ObjectCount = myPlayer.GetItemCount(CannabisWaterBottleEmpty)
		; myPlayer.RemoveItem(CannabisWaterBottleEmpty, ObjectCount, True)
		; ObjectREF = myPlayer.AddItem(CannabisWaterBottleEmpty, ObjectCount, True)
		; Game.EnablePlayerControls()
		; CannabisItemsRepairedMessage.Show()
		; Return
	ElseIf Button == 1
		MaintenanceConfirmUninstallMenu()
		Return
	ElseIf Button == 2
		OptionsMenu()
	EndIf
	If Button < 2 ; If Button != 4
		MaintenanceMenu()
	EndIf
EndFunction

Function MaintenanceConfirmUninstallMenu()
	Actor CannabisPlayer = Game.GetPlayer()
	Int Button = CannabisConfirmMessage.Show()
	If Button == 0
		Game.DisablePlayerControls()
		if Game.getFormFromFile(0x000D6D, "CannabisUpdate.esp");.GetValue() == 0
			;Debug.Notification("Updatefile detected!")
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
			If CannabisUpdate.GetValue() == 0
				CannabisUpdateAttractFrequency.SetValue(CannabisAttractFrequency.GetValue())
				CannabisUpdateBluntsWrapped.SetValue(CannabisBluntsWrapped.GetValue())
				CannabisUpdateBudsHarvested.SetValue(CannabisBudsHarvested.GetValue())
				CannabisUpdateJointsRolled.SetValue(CannabisJointsRolled.GetValue())
				CannabisUpdateNoAnimatingSpells.SetValue(CannabisNoAnimatingSpells.GetValue())
				CannabisUpdateNoAnimations.SetValue(CannabisNoAnimations.GetValue())
				CannabisUpdateNoImageSpaceModifier.SetValue(CannabisNoImageSpaceModifier.GetValue())
				CannabisUpdateNoSellingDialogs.SetValue(CannabisNoSellingDialogs.GetValue())
				CannabisUpdatePlantsDying.SetValue(CannabisPlantsDying.GetValue())
				CannabisUpdatePlantsHarvested.SetValue(CannabisPlantsHarvested.GetValue())
				CannabisUpdateSeedsPlanted.SetValue(CannabisSeedsPlanted.GetValue())
				CannabisUpdate.SetValue(1)
			EndIf
		EndIf
		CannabisQuest.Stop()
		CannabisAttractNPCQuest.Stop()
		CannabisPlayer.RemoveSpell(CannabisAttractNPCAbility)
		if CannabisNoAnimatingSpells.GetValue() == 0
			CannabisPlayer.RemoveSpell(CannabisSmokeLongpipeNPCSpell)
			CannabisPlayer.RemoveSpell(CannabisSmokeLongpipeBoneNPCSpell)
			CannabisPlayer.RemoveSpell(CannabisSmokeDragonBongNPCSpell)
			CannabisPlayer.RemoveSpell(CannabisSmokeGourdpipeNPCSpell)
			CannabisPlayer.RemoveSpell(CannabisSmokeJointNPCSpell)
			CannabisPlayer.RemoveSpell(CannabisSmokeBluntNPCSpell)
		EndIf
		If CannabisPlayer.HasMagicEffectWithKeyword(CannabisStoned)
			CannabisIndicaISFX.Remove()
			CannabisSativaISFX.Remove()
		EndIf
		Game.EnablePlayerControls()
		CannabisUninstalledMessage.Show()
		OptionsMenu()
		Return
	ElseIf Button == 2
		Return
	EndIf
EndFunction
