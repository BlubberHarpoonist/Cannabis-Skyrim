Scriptname CannabisSatchelRefAliasScript extends ReferenceAlias  

Import Game

Armor Property CannabisSatchel Auto
Armor Property CannabisSatchelWearable Auto

FormList Property CannabisBudsList auto

GlobalVariable Property CannabisBluntsWrapped Auto
GlobalVariable Property CannabisJointsRolled Auto
GlobalVariable Property CannabisItemWorn Auto

Ingredient Property CannabisElvesEarFermented Auto

Message Property CannabisSatchelMessage Auto
Message Property CannabisWrapBluntBeginnerMessage Auto
Message Property CannabisWrapBluntIntermediateMessage Auto
Message Property CannabisWrapBluntExpertMessage Auto
Message Property CannabisRollJointBeginnerMessage Auto
Message Property CannabisRollJointIntermediateMessage Auto
Message Property CannabisRollJointExpertMessage Auto
Message Property CannabisFillGourdPipeMessage Auto
Message Property CannabisFillLongPipeMessage Auto
Message Property CannabisFillDragonBongMessage Auto
Message Property CannabisStatsMessage Auto

MiscObject Property CannabisLongPipe Auto
MiscObject Property CannabisLongPipeBone Auto
MiscObject Property CannabisGourdPipe Auto

MiscObject Property CannabisDragonBong Auto

MiscObject Property CannabisWaterbottleEmpty Auto

MiscObject Property PaperRoll Auto

Perk Property CannabisHighWrapperBeginner Auto
Perk Property CannabisHighWrapperIntermediate Auto
Perk Property CannabisHighWrapperExpert Auto

Perk Property CannabisHighRollerBeginner Auto
Perk Property CannabisHighRollerIntermediate Auto
Perk Property CannabisHighRollerExpert Auto

Potion Property CannabisWaterBottle Auto

Potion Property CannabisAZBud Auto
Potion Property CannabisDPBud Auto
Potion Property CannabisJHBud Auto
Potion Property CannabisNLBud Auto
Potion Property CannabisPKBud Auto
Potion Property CannabisSDBud Auto

Potion Property CannabisAZBluntBeginner Auto
Potion Property CannabisDPBluntBeginner Auto
Potion Property CannabisJHBluntBeginner Auto
Potion Property CannabisNLBluntBeginner Auto
Potion Property CannabisPKBluntBeginner Auto
Potion Property CannabisSDBluntBeginner Auto

Potion Property CannabisAZBluntIntermediate Auto
Potion Property CannabisDPBluntIntermediate Auto
Potion Property CannabisJHBluntIntermediate Auto
Potion Property CannabisNLBluntIntermediate Auto
Potion Property CannabisPKBluntIntermediate Auto
Potion Property CannabisSDBluntIntermediate Auto

Potion Property CannabisAZBluntExpert Auto
Potion Property CannabisDPBluntExpert Auto
Potion Property CannabisJHBluntExpert Auto
Potion Property CannabisNLBluntExpert Auto
Potion Property CannabisPKBluntExpert Auto
Potion Property CannabisSDBluntExpert Auto

Potion Property CannabisAZJointBeginner Auto
Potion Property CannabisDPJointBeginner Auto
Potion Property CannabisJHJointBeginner Auto
Potion Property CannabisNLJointBeginner Auto
Potion Property CannabisPKJointBeginner Auto
Potion Property CannabisSDJointBeginner Auto

Potion Property CannabisAZJointIntermediate Auto
Potion Property CannabisDPJointIntermediate Auto
Potion Property CannabisJHJointIntermediate Auto
Potion Property CannabisNLJointIntermediate Auto
Potion Property CannabisPKJointIntermediate Auto
Potion Property CannabisSDJointIntermediate Auto

Potion Property CannabisAZJointExpert Auto
Potion Property CannabisDPJointExpert Auto
Potion Property CannabisJHJointExpert Auto
Potion Property CannabisNLJointExpert Auto
Potion Property CannabisPKJointExpert Auto
Potion Property CannabisSDJointExpert Auto

Potion Property CannabisAZGourdPipe Auto
Potion Property CannabisDPGourdPipe Auto
Potion Property CannabisJHGourdPipe Auto
Potion Property CannabisNLGourdPipe Auto
Potion Property CannabisPKGourdPipe Auto
Potion Property CannabisSDGourdPipe Auto

Potion Property CannabisAZLongPipe Auto
Potion Property CannabisDPLongPipe Auto
Potion Property CannabisJHLongPipe Auto
Potion Property CannabisNLLongPipe Auto
Potion Property CannabisPKLongPipe Auto
Potion Property CannabisSDLongPipe Auto

Potion Property CannabisAZLongPipeBone Auto
Potion Property CannabisDPLongPipeBone Auto
Potion Property CannabisJHLongPipeBone Auto
Potion Property CannabisNLLongPipeBone Auto
Potion Property CannabisPKLongPipeBone Auto
Potion Property CannabisSDLongPipeBone Auto

Potion Property CannabisAZDragonBong Auto
Potion Property CannabisDPDragonBong Auto
Potion Property CannabisJHDragonBong Auto
Potion Property CannabisNLDragonBong Auto
Potion Property CannabisPKDragonBong Auto
Potion Property CannabisSDDragonBong Auto

Event OnObjectEquipped(Form akBaseItem, ObjectReference akItemReference)
	if akBaseItem == CannabisSatchel
		Game.GetPlayer().UnEquipItem(akBaseItem, False, True)
		DisablePlayerControls(abMenu = True)
		EnablePlayerControls(abMenu = True)
		MainMenu(Game.GetPlayer())
	EndIf
EndEvent

; Event OnEquipped(Actor akActor)
	; If akActor == GetPlayer()
		; DisablePlayerControls(abMenu = True)
		; akActor.EquipItem(CannabisSatchel, True, True)
		; Utility.Wait(0.01)
		; akActor.UnequipItem(CannabisSatchel, False, True)
		; EnablePlayerControls(abMenu = True)
		; MainMenu(akActor)
	; EndIf
; EndEvent

Function MainMenu(Actor akActor)
	Int Button = CannabisSatchelMessage.Show()
	If Button == 0
		; AddInventoryEventFilter(CannabisBudsList)
		; Actor contActor = akActor
		; DisablePlayerControls()
		; EnablePlayerControls()
		; If (!Utility.IsInMenuMode())
			; contActor.OpenInventory(True)
		; EndIf
		;RemoveInventoryEventFilter(CannabisBudsList)
		akActor.ShowGiftMenu(true, CannabisBudsList, True, False)
		Return
	ElseIf Button == 1
		CannabisItemWorn.SetValue(1)
		akActor.AddItem(CannabisSatchelWearable, 1, True)
		akActor.EquipItem(CannabisSatchelWearable, True, False)
	ElseIf Button == 2
		CannabisItemWorn.SetValue(0)			
		akActor.UnEquipItem(CannabisSatchelWearable, True, False)
		akActor.RemoveItem(CannabisSatchelWearable, 1, True)
	ElseIf Button == 3
		Int BluntsWrapped = CannabisBluntsWrapped.GetValue() as Int
		If BluntsWrapped < 40
			if akActor.HasPerk(CannabisHighWrapperBeginner) == 0
				akActor.AddPerk(CannabisHighWrapperBeginner)
			EndIf
		ElseIf BluntsWrapped >= 40 && BluntsWrapped < 80
			if akActor.HasPerk(CannabisHighWrapperIntermediate) == 0
				akActor.AddPerk(CannabisHighWrapperIntermediate)
			EndIf
		ElseIf BluntsWrapped >= 80
			if akActor.HasPerk(CannabisHighWrapperExpert) == 0
				akActor.AddPerk(CannabisHighWrapperExpert)
			EndIf
		EndIf
		BluntMenu(akActor, BluntsWrapped)
	ElseIf Button == 4
		Int JointsRolled = CannabisJointsRolled.GetValue() as Int
		If JointsRolled < 40
			if akActor.HasPerk(CannabisHighRollerBeginner) == 0
				akActor.AddPerk(CannabisHighRollerBeginner)
			EndIf
		ElseIf JointsRolled >= 40 && JointsRolled < 80
			if akActor.HasPerk(CannabisHighRollerIntermediate) == 0
				akActor.AddPerk(CannabisHighRollerIntermediate)
			EndIf
		ElseIf JointsRolled >= 80
			if akActor.HasPerk(CannabisHighRollerExpert) == 0
				akActor.AddPerk(CannabisHighRollerExpert)
			EndIf
		EndIf
		JointMenu(akActor, JointsRolled)
	ElseIf Button == 5
		FillGourdPipe(akActor)
	ElseIf Button == 6
		FillLongPipe(akActor)	
	ElseIf Button == 7
		FillLongPipeBone(akActor)
	ElseIf Button == 8
		FillDragonBong(akActor)
	ElseIf Button == 9
		Return
	EndIf
	If Button != 9
		MainMenu(akActor)
	EndIf
EndFunction

Function BluntMenu(Actor akActor, Int BluntsWrapped)
	Int Button
	If BluntsWrapped < 40
		Button = CannabisWrapBluntBeginnerMessage.Show()
	ElseIf BluntsWrapped >= 40 && BluntsWrapped < 80
		Button = CannabisWrapBluntIntermediateMessage.Show()
	ElseIf BluntsWrapped >= 80
		Button = CannabisWrapBluntExpertMessage.Show()
	EndIf
	If Button != 6
		WrapBlunt(akActor, Button, BluntsWrapped)
	EndIf
EndFunction

Function JointMenu(Actor akActor, Int JointsRolled)
	Int Button
	If JointsRolled < 40
		Button = CannabisRollJointBeginnerMessage.Show()
	ElseIf JointsRolled >= 40 && JointsRolled < 80
		Button = CannabisRollJointIntermediateMessage.Show()
	ElseIf JointsRolled >= 80
		Button = CannabisRollJointExpertMessage.Show()
	EndIf
	If Button != 6
		RollJoint(akActor, Button, JointsRolled)
	EndIf
EndFunction

Function FillGourdPipe(Actor akActor)
	Int Button = CannabisFillGourdPipeMessage.Show()
	If Button == 0
		akActor.RemoveItem(CannabisAZBud, 1)
		akActor.RemoveItem(CannabisGourdPipe, 1, True)
		akActor.AddItem(CannabisAZGourdPipe, 1)
	ElseIf Button == 1
		akActor.RemoveItem(CannabisDPBud, 1)
		akActor.RemoveItem(CannabisGourdPipe, 1, True)
		akActor.AddItem(CannabisDPGourdPipe, 1)
	ElseIf Button == 2
		akActor.RemoveItem(CannabisJHBud, 1)
		akActor.RemoveItem(CannabisGourdPipe, 1, True)
		akActor.AddItem(CannabisJHGourdPipe, 1)
	ElseIf Button == 3
		akActor.RemoveItem(CannabisNLBud, 1)
		akActor.RemoveItem(CannabisGourdPipe, 1, True)
		akActor.AddItem(CannabisNLGourdPipe, 1)
	ElseIf Button == 4
		akActor.RemoveItem(CannabisPKBud, 1)
		akActor.RemoveItem(CannabisGourdPipe, 1, True)
		akActor.AddItem(CannabisPKGourdPipe, 1)
	ElseIf Button == 5
		akActor.RemoveItem(CannabisSDBud, 1)
		akActor.RemoveItem(CannabisGourdPipe, 1, True)
		akActor.AddItem(CannabisSDGourdPipe, 1)
	ElseIf Button == 6
		Return
	EndIf
EndFunction

Function FillLongPipe(Actor akActor)
	Int Button = CannabisFillLongPipeMessage.Show()
	If Button == 0
		akActor.RemoveItem(CannabisAZBud, 1)
		akActor.RemoveItem(CannabisLongPipe, 1, True)
		akActor.AddItem(CannabisAZLongPipe, 1)
	ElseIf Button == 1
		akActor.RemoveItem(CannabisDPBud, 1)
		akActor.RemoveItem(CannabisLongPipe, 1, True)
		akActor.AddItem(CannabisDPLongPipe, 1)
	ElseIf Button == 2
		akActor.RemoveItem(CannabisJHBud, 1)
		akActor.RemoveItem(CannabisLongPipe, 1, True)
		akActor.AddItem(CannabisJHLongPipe, 1)
	ElseIf Button == 3
		akActor.RemoveItem(CannabisNLBud, 1)
		akActor.RemoveItem(CannabisLongPipe, 1, True)
		akActor.AddItem(CannabisNLLongPipe, 1)
	ElseIf Button == 4
		akActor.RemoveItem(CannabisPKBud, 1)
		akActor.RemoveItem(CannabisLongPipe, 1, True)
		akActor.AddItem(CannabisPKLongPipe, 1)
	ElseIf Button == 5
		akActor.RemoveItem(CannabisSDBud, 1)
		akActor.RemoveItem(CannabisLongPipe, 1, True)
		akActor.AddItem(CannabisSDLongPipe, 1)
	ElseIf Button == 6
		Return
	EndIf
EndFunction

Function FillLongPipeBone(Actor akActor)
	Int Button = CannabisFillLongPipeMessage.Show()
	If Button == 0
		akActor.RemoveItem(CannabisAZBud, 1)
		akActor.RemoveItem(CannabisLongPipeBone, 1, True)
		akActor.AddItem(CannabisAZLongPipeBone, 1)
	ElseIf Button == 1
		akActor.RemoveItem(CannabisDPBud, 1)
		akActor.RemoveItem(CannabisLongPipeBone, 1, True)
		akActor.AddItem(CannabisDPLongPipeBone, 1)
	ElseIf Button == 2
		akActor.RemoveItem(CannabisJHBud, 1)
		akActor.RemoveItem(CannabisLongPipeBone, 1, True)
		akActor.AddItem(CannabisJHLongPipeBone, 1)
	ElseIf Button == 3
		akActor.RemoveItem(CannabisNLBud, 1)
		akActor.RemoveItem(CannabisLongPipeBone, 1, True)
		akActor.AddItem(CannabisNLLongPipeBone, 1)
	ElseIf Button == 4
		akActor.RemoveItem(CannabisPKBud, 1)
		akActor.RemoveItem(CannabisLongPipeBone, 1, True)
		akActor.AddItem(CannabisPKLongPipeBone, 1)
	ElseIf Button == 5
		akActor.RemoveItem(CannabisSDBud, 1)
		akActor.RemoveItem(CannabisLongPipeBone, 1, True)
		akActor.AddItem(CannabisSDLongPipeBone, 1)
	ElseIf Button == 6
		Return
	EndIf
EndFunction

Function FillDragonBong(Actor akActor)
		Int Button = CannabisFillDragonBongMessage.Show()
		If Button == 0
			akActor.RemoveItem(CannabisWaterBottle, 1)
			akActor.AddItem(CannabisWaterbottleEmpty, 1)
			akActor.RemoveItem(CannabisAZBud, 1)
			akActor.RemoveItem(CannabisDragonBong, 1, True)
			akActor.AddItem(CannabisAZDragonBong, 1)
		ElseIf Button == 1
			akActor.RemoveItem(CannabisWaterBottle, 1)
			akActor.AddItem(CannabisWaterbottleEmpty, 1)
			akActor.RemoveItem(CannabisDPBud, 1)
			akActor.RemoveItem(CannabisDragonBong, 1, True)
			akActor.AddItem(CannabisDPDragonBong, 1)
		ElseIf Button == 2
			akActor.RemoveItem(CannabisWaterBottle, 1)
			akActor.AddItem(CannabisWaterbottleEmpty, 1)
			akActor.RemoveItem(CannabisJHBud, 1)
			akActor.RemoveItem(CannabisDragonBong, 1, True)
			akActor.AddItem(CannabisJHDragonBong, 1)
		ElseIf Button == 3
			akActor.RemoveItem(CannabisWaterBottle, 1)
			akActor.AddItem(CannabisWaterbottleEmpty, 1)
			akActor.RemoveItem(CannabisNLBud, 1)
			akActor.RemoveItem(CannabisDragonBong, 1, True)
			akActor.AddItem(CannabisNLDragonBong, 1)
		ElseIf Button == 4
			akActor.RemoveItem(CannabisWaterBottle, 1)
			akActor.AddItem(CannabisWaterbottleEmpty, 1)
			akActor.RemoveItem(CannabisPKBud, 1)
			akActor.RemoveItem(CannabisDragonBong, 1, True)
			akActor.AddItem(CannabisPKDragonBong, 1)
		ElseIf Button == 5
			akActor.RemoveItem(CannabisWaterBottle, 1)
			akActor.AddItem(CannabisWaterbottleEmpty, 1)
			akActor.RemoveItem(CannabisSDBud, 1)
			akActor.RemoveItem(CannabisDragonBong, 1, True)
			akActor.AddItem(CannabisSDDragonBong, 1)
		ElseIf Button == 6
			Return
		EndIf
EndFunction

Function WrapBlunt(Actor akActor, Int Strain, Int BluntsWrapped)
	akActor.RemoveItem(CannabisElvesEarFermented, 1)
	If Strain == 0
		If BluntsWrapped < 40
			akActor.RemoveItem(CannabisAZBud, 3)
			akActor.AddItem(CannabisAZBluntBeginner, 1)
		ElseIf BluntsWrapped >= 40 && BluntsWrapped < 80
			akActor.RemoveItem(CannabisAZBud, 2)
			akActor.AddItem(CannabisAZBluntIntermediate, 1)
		ElseIf BluntsWrapped >= 80
			akActor.RemoveItem(CannabisAZBud, 1)
			akActor.AddItem(CannabisAZBluntExpert, 1)
		EndIf
	ElseIf Strain == 1
		If BluntsWrapped < 40
			akActor.RemoveItem(CannabisDPBud, 3)
			akActor.AddItem(CannabisDPBluntBeginner, 1)
		ElseIf BluntsWrapped >= 40 && BluntsWrapped < 80
			akActor.RemoveItem(CannabisDPBud, 2)
			akActor.AddItem(CannabisDPBluntIntermediate, 1)
		ElseIf BluntsWrapped >= 80
			akActor.RemoveItem(CannabisDPBud, 1)
			akActor.AddItem(CannabisDPBluntExpert, 1)
		EndIf
	ElseIf Strain == 2
		If BluntsWrapped < 40
			akActor.RemoveItem(CannabisJHBud, 3)
			akActor.AddItem(CannabisJHBluntBeginner, 1)
		ElseIf BluntsWrapped >= 40 && BluntsWrapped < 80
			akActor.RemoveItem(CannabisJHBud, 2)
			akActor.AddItem(CannabisJHBluntIntermediate, 1)
		ElseIf BluntsWrapped >= 80
			akActor.RemoveItem(CannabisJHBud, 1)
			akActor.AddItem(CannabisJHBluntExpert, 1)
		EndIf
	ElseIf Strain == 3
		If BluntsWrapped < 40
			akActor.RemoveItem(CannabisNLBud, 3)
			akActor.AddItem(CannabisNLBluntBeginner, 1)
		ElseIf BluntsWrapped >= 40 && BluntsWrapped < 80
			akActor.RemoveItem(CannabisNLBud, 2)
			akActor.AddItem(CannabisNLBluntIntermediate, 1)
		ElseIf BluntsWrapped >= 80
			akActor.RemoveItem(CannabisNLBud, 1)
			akActor.AddItem(CannabisNLBluntExpert, 1)
		EndIf
	ElseIf Strain == 4
		If BluntsWrapped < 40
			akActor.RemoveItem(CannabisPKBud, 3)
			akActor.AddItem(CannabisPKBluntBeginner, 1)
		ElseIf BluntsWrapped >= 40 && BluntsWrapped < 80
			akActor.RemoveItem(CannabisPKBud, 2)
			akActor.AddItem(CannabisPKBluntIntermediate, 1)
		ElseIf BluntsWrapped >= 80
			akActor.RemoveItem(CannabisPKBud, 1)
			akActor.AddItem(CannabisPKBluntExpert, 1)
		EndIf	
	ElseIf Strain == 5
		If BluntsWrapped < 40
			akActor.RemoveItem(CannabisSDBud, 3)
			akActor.AddItem(CannabisSDBluntBeginner, 1)
		ElseIf BluntsWrapped >= 40 && BluntsWrapped < 80
			akActor.RemoveItem(CannabisSDBud, 2)
			akActor.AddItem(CannabisSDBluntIntermediate, 1)
		ElseIf BluntsWrapped >= 80
			akActor.RemoveItem(CannabisSDBud, 1)
			akActor.AddItem(CannabisSDBluntExpert, 1)
		EndIf		
	EndIf
	Return CannabisBluntsWrapped.SetValue(BluntsWrapped + 1)
EndFunction

Function RollJoint(Actor akActor, Int Strain, Int JointsRolled)
	akActor.RemoveItem(PaperRoll, 1)
	If Strain == 0
		If JointsRolled < 40
			akActor.RemoveItem(CannabisAZBud, 3)
			akActor.AddItem(CannabisAZJointBeginner, 1)
		ElseIf JointsRolled >= 40 && JointsRolled < 80
			akActor.RemoveItem(CannabisAZBud, 2)
			akActor.AddItem(CannabisAZJointIntermediate, 1)
		ElseIf JointsRolled >= 80
			akActor.RemoveItem(CannabisAZBud, 1)
			akActor.AddItem(CannabisAZJointExpert, 1)
		EndIf
	ElseIf Strain == 1
		If JointsRolled < 40
			akActor.RemoveItem(CannabisDPBud, 3)
			akActor.AddItem(CannabisDPJointBeginner, 1)
		ElseIf JointsRolled >= 40 && JointsRolled < 80
			akActor.RemoveItem(CannabisDPBud, 2)
			akActor.AddItem(CannabisDPJointIntermediate, 1)
		ElseIf JointsRolled >= 80
			akActor.RemoveItem(CannabisDPBud, 1)
			akActor.AddItem(CannabisDPJointExpert, 1)
		EndIf
	ElseIf Strain == 2
		If JointsRolled < 40
			akActor.RemoveItem(CannabisJHBud, 3)
			akActor.AddItem(CannabisJHJointBeginner, 1)
		ElseIf JointsRolled >= 40 && JointsRolled < 80
			akActor.RemoveItem(CannabisJHBud, 2)
			akActor.AddItem(CannabisJHJointIntermediate, 1)
		ElseIf JointsRolled >= 80
			akActor.RemoveItem(CannabisJHBud, 1)
			akActor.AddItem(CannabisJHJointExpert, 1)
		EndIf
	ElseIf Strain == 3
		If JointsRolled < 40
			akActor.RemoveItem(CannabisNLBud, 3)
			akActor.AddItem(CannabisNLJointBeginner, 1)
		ElseIf JointsRolled >= 40 && JointsRolled < 80
			akActor.RemoveItem(CannabisNLBud, 2)
			akActor.AddItem(CannabisNLJointIntermediate, 1)
		ElseIf JointsRolled >= 80
			akActor.RemoveItem(CannabisNLBud, 1)
			akActor.AddItem(CannabisNLJointExpert, 1)
		EndIf
	ElseIf Strain == 4
		If JointsRolled < 40
			akActor.RemoveItem(CannabisPKBud, 3)
			akActor.AddItem(CannabisPKJointBeginner, 1)
		ElseIf JointsRolled >= 40 && JointsRolled < 80
			akActor.RemoveItem(CannabisPKBud, 2)
			akActor.AddItem(CannabisPKJointIntermediate, 1)
		ElseIf JointsRolled >= 80
			akActor.RemoveItem(CannabisPKBud, 1)
			akActor.AddItem(CannabisPKJointExpert, 1)
		EndIf	
	ElseIf Strain == 5
		If JointsRolled < 40
			akActor.RemoveItem(CannabisSDBud, 3)
			akActor.AddItem(CannabisSDJointBeginner, 1)
		ElseIf JointsRolled >= 40 && JointsRolled < 80
			akActor.RemoveItem(CannabisSDBud, 2)
			akActor.AddItem(CannabisSDJointIntermediate, 1)
		ElseIf JointsRolled >= 80
			akActor.RemoveItem(CannabisSDBud, 1)
			akActor.AddItem(CannabisSDJointExpert, 1)
		EndIf		
	EndIf
	Return CannabisJointsRolled.SetValue(JointsRolled + 1)
EndFunction