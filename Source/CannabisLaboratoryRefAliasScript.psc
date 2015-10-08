Scriptname CannabisLaboratoryRefAliasScript extends ReferenceAlias  

;FormList Property CannabisBudsList Auto
FormList Property CannabisLaboratoryBudsList Auto
FormList Property CannabisLaboratoryAlcoholList Auto

Ingredient Property ElvesEar Auto
Ingredient Property CannabisElvesEarFermented Auto

Potion Property Ale Auto
Potion Property FoodMead Auto
Potion Property FoodWineBottle02 Auto
Potion Property FoodWineAlto Auto
Potion Property CannabisSolvent Auto
Potion Property CannabisAZBud Auto
Potion Property CannabisDPBud Auto
Potion Property CannabisJHBud Auto
Potion Property CannabisNLBud Auto
Potion Property CannabisPKBud Auto
Potion Property CannabisSDBud Auto
Potion Property CannabisHashish Auto
Potion Property CannabisHashishOil Auto

Message Property CannabisLaboratoryMessage Auto
Message Property CannabisLaboratoryInUseMessage Auto
Message Property CannabisLaboratoryHowManyElvesEarMessage Auto

Message Property LaboratoryInUseMessage Auto Hidden


Int Property ItemCountElvesEar Auto Hidden
Int Property ItemFlag = 0 Auto Hidden

Float Property DayLastUsed Auto Hidden
Float Property DaysRemaining Auto Hidden

Auto State LabReady
	Event OnActivate(ObjectReference akActor)
		If akActor == Game.GetPlayer()	
			;ObjectReference LabRef = Self.GetReference()
			Int Button = CannabisLaboratoryMessage.Show()
			If Button == 0
				ItemCountElvesEar = HowManyElvesEarMenu()
				If ItemCountElvesEar >= 1
					akActor.RemoveItem(ElvesEar, ItemCountElvesEar)
					GoToState("LabFermenting")
				EndIf
			ElseIf Button == 1
				ItemFlag = Button
				GoToState("LabThinking")
			ElseIf Button == 2
				ItemFlag = Button
				GoToState("LabThinking")
			ElseIf Button == 3
				ItemFlag = Button
				GoToState("LabThinking")
			ElseIf Button == 4
				Return
			EndIf
		EndIf
	EndEvent
EndState

Int Function HowManyElvesEarMenu()
	Int Button = CannabisLaboratoryHowManyElvesEarMessage.Show()
	If Button == 0
		Return 1
	ElseIf Button == 1
		Return 10
	ElseIf Button == 2
		Return 20
	ElseIf Button == 3
		Return 30
	ElseIf Button == 4
		Return 40
	ElseIf Button == 5
		Return 50
	ElseIf Button == 6
		Return 0
	EndIf
EndFunction
	
State LabThinking
	Event onBeginState()
		Actor CannabisActor = Game.GetPlayer()
		If ItemFlag == 1
			RemoveBuds(CannabisActor, 5)
			GoToState("LabMakingHashish")
		ElseIf ItemFlag == 2
			RemoveBuds(CannabisActor, 20)
			Game.GetPlayer().RemoveItem(CannabisSolvent, 1)
			GoToState("LabDistillingHashishOil")
		ElseIf ItemFlag == 3
			RemoveAlcohol(CannabisActor, 3)
			GoToState("LabDistillingAlcohol")			
		EndIf
	EndEvent
	event onActivate(objectReference akActor)
		; Yawn...
	EndEvent
EndState

State LabFermenting
	Event onBeginState()
		DayLastUsed = utility.getCurrentGameTime()
	endEvent
	
	event onActivate(objectReference akActor)
		if (DayLastUsed + 1 <= utility.getCurrentGameTime())
			goToState("LabDoneFermenting")
		Else
			DaysRemaining = GetRemainingDays(DayLastUsed, 1)
			LaboratoryInUseMessage = CannabisLaboratoryInUseMessage
			Int Button = LaboratoryInUseMessage.show(DaysRemaining)
			If Button == 0
				Return
			ElseIf Button == 1
				GoToState("LabReady")
			EndIf
		EndIf
	endEvent
EndState

State LabDoneFermenting
	event onActivate(objectReference akActor)
		akActor.AddItem(CannabisElvesEarFermented, ItemCountElvesEar)
		GoToState("LabReady")
	endEvent
EndState

State LabMakingHashish
	Event onBeginState()
		DayLastUsed = utility.getCurrentGameTime()
	endEvent
	event onActivate(objectReference akActor)
		if (DayLastUsed + 2 <= utility.getCurrentGameTime())
			goToState("LabDoneMakingHashish")
		Else
			DaysRemaining = GetRemainingDays(DayLastUsed, 2)
			LaboratoryInUseMessage = CannabisLaboratoryInUseMessage
			Int Button = LaboratoryInUseMessage.show(DaysRemaining)
			If Button == 0
				Return
			ElseIf Button == 1
				GoToState("LabReady")
			EndIf
		EndIf
	endEvent
EndState

State LabDoneMakingHashish
	event onActivate(objectReference akActor)
		akActor.AddItem(CannabisHashish, 1)
		GoToState("LabReady")
	endEvent
EndState

State LabDistillingHashishOil
	Event onBeginState()
		DayLastUsed = utility.getCurrentGameTime()
	endEvent
	
	event onActivate(objectReference akActor)
		if (DayLastUsed + 3 <= utility.getCurrentGameTime())
			goToState("LabDoneDistillingHashishOil")
		Else
			DaysRemaining = GetRemainingDays(DayLastUsed, 3)
			LaboratoryInUseMessage = CannabisLaboratoryInUseMessage
			Int Button = LaboratoryInUseMessage.show(DaysRemaining)
			If Button == 0
				Return
			ElseIf Button == 1
				GoToState("LabReady")
			EndIf
		EndIf
	endEvent
EndState

State LabDoneDistillingHashishOil
	event onActivate(objectReference akActor)
		akActor.AddItem(CannabisHashishOil, 1)
		GoToState("LabReady")
	endEvent
EndState

State LabDistillingAlcohol
	Event onBeginState()
		DayLastUsed = utility.getCurrentGameTime()
	endEvent
	
	event onActivate(objectReference akActor)
		if (DayLastUsed + 1 <= utility.getCurrentGameTime())
			goToState("LabDoneDistillingAlcohol")
		Else
			DaysRemaining = GetRemainingDays(DayLastUsed, 1)
			LaboratoryInUseMessage = CannabisLaboratoryInUseMessage
			Int Button = LaboratoryInUseMessage.show(DaysRemaining)
			If Button == 0
				Return
			ElseIf Button == 1
				GoToState("LabReady")
			EndIf
		EndIf
	endEvent
EndState

State LabDoneDistillingAlcohol
	event onActivate(objectReference akActor)
		akActor.AddItem(CannabisSolvent, 1)
		GoToState("LabReady")
	endEvent
EndState

Float Function GetRemainingDays(Float DayLastUsed, Float DaysUntilReady)
	Float RemainingDays = DayLastUsed + DaysUntilReady - utility.getCurrentGameTime()
	Return RemainingDays
EndFunction

Function RemoveBuds(ObjectReference akActor, Int intIndex)
	Int intRndStrain = 0
	CannabisLaboratoryBudsList.AddForm(CannabisAZBud)
	CannabisLaboratoryBudsList.AddForm(CannabisDPBud)
	CannabisLaboratoryBudsList.AddForm(CannabisJHBud)
	CannabisLaboratoryBudsList.AddForm(CannabisNLBud)
	CannabisLaboratoryBudsList.AddForm(CannabisPKBud)
	CannabisLaboratoryBudsList.AddForm(CannabisSDBud)
	While intIndex
		intRndStrain = Utility.RandomInt(0, CannabisLaboratoryBudsList.GetSize() - 1)
		If akActor.getitemcount(CannabisLaboratoryBudsList.GetAt(intRndStrain)) >= 1
			akActor.Removeitem(CannabisLaboratoryBudsList.GetAt(intRndStrain), 1, True)
			intIndex -= 1
		Else
			CannabisLaboratoryBudsList.RemoveAddedForm(CannabisLaboratoryBudsList.GetAt(intRndStrain))
		EndIf
	EndWhile
	If CannabisLaboratoryBudsList.GetSize() > 0
		CannabisLaboratoryBudsList.Revert()
	EndIf
	Return
EndFunction

Function RemoveAlcohol(ObjectReference akActor, Int intIndex)
	Int intRndAlcohol = 0
	CannabisLaboratoryAlcoholList.AddForm(Ale)
	CannabisLaboratoryAlcoholList.AddForm(FoodMead)
	CannabisLaboratoryAlcoholList.AddForm(FoodWineBottle02)
	;CannabisLaboratoryAlcoholList.AddForm(FoodWineAlto)
	While intIndex
		intRndAlcohol = Utility.RandomInt(0, CannabisLaboratoryAlcoholList.GetSize() - 1)
		If akActor.getitemcount(CannabisLaboratoryAlcoholList.GetAt(intRndAlcohol)) >= 1
			akActor.Removeitem(CannabisLaboratoryAlcoholList.GetAt(intRndAlcohol), 1, True)
			intIndex -= 1
		Else
			CannabisLaboratoryAlcoholList.RemoveAddedForm(CannabisLaboratoryAlcoholList.GetAt(intRndAlcohol))
		EndIf
		;debug.Trace("CANNABIS - Index: " + intIndex + 1 + ", Budlist size: " + CannabisLaboratoryBudsList.GetSize() + ", Object: " + CannabisLaboratoryBudsList.GetAt(intRndStrain))
	EndWhile
	If CannabisLaboratoryAlcoholList.GetSize() > 0
		CannabisLaboratoryAlcoholList.Revert()
	EndIf
	Return
EndFunction