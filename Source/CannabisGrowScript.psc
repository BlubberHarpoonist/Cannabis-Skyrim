Scriptname CannabisGrowScript extends ObjectReference  

Import Game
Import Math
Import Utility

Int Property intHeight Auto
Int	Property Button Auto Hidden
Int	Property SeedPlanted Auto Hidden
Int	Property SeedsPlanted Auto Hidden
Int	Property Strain Auto Hidden
Int	Property SeedWatered Auto Hidden
Int	Property GrowStage Auto Hidden
Int Property rndIntPlantAngle Auto Hidden
Int Property rndInt Auto Hidden
Int Property IsPlantMale Auto Hidden
Int Property IsPlantIndica Auto Hidden
Int Property UpdateInterval = 10 Auto Hidden
Int Property YieldFactor = 1 Auto Hidden

Float Property GrowSpeedFactor = 1.0 Auto Hidden
Float Property PlantScale Auto Hidden
Float Property rndFloat Auto Hidden
Float Property xPos Auto Hidden
Float Property yPos Auto Hidden
Float Property zPos Auto Hidden

Actor Property CannabisActor Auto Hidden

Activator Property CannabisPlanter Auto

MiscObject Property CannabisFibers Auto
MiscObject Property CannabisPlacer Auto

ObjectReference Property CannabisPlantREF Auto Hidden
ObjectReference Property CannabisPlacerREF Auto Hidden
ObjectReference Property CannabisPlantDisabledREF Auto Hidden
ObjectReference Property CannabisPlanterDisabledREF  Auto Hidden

Perk Property GreenThumb Auto

Potion Property CannabisAZBud Auto
Potion Property CannabisDPBud Auto
Potion Property CannabisJHBud Auto
Potion Property CannabisNLBud Auto
Potion Property CannabisPKBud Auto
Potion Property CannabisSDBud Auto
Potion Property CannabisAZSeed Auto
Potion Property CannabisDPSeed Auto
Potion Property CannabisJHSeed Auto
Potion Property CannabisNLSeed Auto
Potion Property CannabisPKSeed Auto
Potion Property CannabisSDSeed Auto

Potion Property CannabisWaterBottle Auto
Potion Property CannabisCharras Auto

Form Property CannabisWaterBottleEmpty Auto
Form Property CannabisSeedling Auto
Form Property CannabisSativaDead Auto
Form Property CannabisIndicaDead Auto
Form Property CannabisAZBaby Auto
Form Property CannabisAZInfant Auto
Form Property CannabisAZGrowing Auto
Form Property CannabisAZFlowering Auto
Form Property CannabisAZAdult Auto
Form Property CannabisAZRiping Auto
Form Property CannabisAZRipe Auto
Form Property CannabisDPBaby Auto
Form Property CannabisDPInfant Auto
Form Property CannabisDPGrowing Auto
Form Property CannabisDPFlowering Auto
Form Property CannabisDPAdult Auto
Form Property CannabisDPRiping Auto
Form Property CannabisDPRipe Auto
Form Property CannabisJHBaby Auto
Form Property CannabisJHInfant Auto
Form Property CannabisJHGrowing Auto
Form Property CannabisJHFlowering Auto
Form Property CannabisJHAdult Auto
Form Property CannabisJHRiping Auto
Form Property CannabisJHRipe Auto
Form Property CannabisNLBaby Auto
Form Property CannabisNLInfant Auto
Form Property CannabisNLGrowing Auto
Form Property CannabisNLFlowering Auto
Form Property CannabisNLAdult Auto
Form Property CannabisNLRiping Auto
Form Property CannabisNLRipe Auto
Form Property CannabisPKBaby Auto
Form Property CannabisPKInfant Auto
Form Property CannabisPKGrowing Auto
Form Property CannabisPKFlowering Auto
Form Property CannabisPKAdult Auto
Form Property CannabisPKRiping Auto
Form Property CannabisPKRipe Auto
Form Property CannabisSDBaby Auto
Form Property CannabisSDInfant Auto
Form Property CannabisSDGrowing Auto
Form Property CannabisSDFlowering Auto
Form Property CannabisSDAdult Auto
Form Property CannabisSDRiping Auto
Form Property CannabisSDRipe Auto
Form Property CannabisAZFloweringMale Auto
Form Property CannabisAZRipeMale Auto
Form Property CannabisDPFloweringMale Auto
Form Property CannabisDPRipeMale Auto
Form Property CannabisJHFloweringMale Auto
Form Property CannabisJHRipeMale Auto
Form Property CannabisNLFloweringMale Auto
Form Property CannabisNLRipeMale Auto
Form Property CannabisPKFloweringMale Auto
Form Property CannabisPKRipeMale Auto
Form Property CannabisSDFloweringMale Auto
Form Property CannabisSDRipeMale Auto

Form Property CannabisSativaDeadTree Auto
Form Property CannabisIndicaDeadTree Auto
Form Property CannabisAZBabyTree Auto
Form Property CannabisAZInfantTree Auto
Form Property CannabisAZGrowingTree Auto
Form Property CannabisAZFloweringTree Auto
Form Property CannabisAZAdultTree Auto
Form Property CannabisAZRipingTree Auto
Form Property CannabisAZRipeTree Auto
Form Property CannabisDPBabyTree Auto
Form Property CannabisDPInfantTree Auto
Form Property CannabisDPGrowingTree Auto
Form Property CannabisDPFloweringTree Auto
Form Property CannabisDPAdultTree Auto
Form Property CannabisDPRipingTree Auto
Form Property CannabisDPRipeTree Auto
Form Property CannabisJHBabyTree Auto
Form Property CannabisJHInfantTree Auto
Form Property CannabisJHGrowingTree Auto
Form Property CannabisJHFloweringTree Auto
Form Property CannabisJHAdultTree Auto
Form Property CannabisJHRipingTree Auto
Form Property CannabisJHRipeTree Auto
Form Property CannabisNLBabyTree Auto
Form Property CannabisNLInfantTree Auto
Form Property CannabisNLGrowingTree Auto
Form Property CannabisNLFloweringTree Auto
Form Property CannabisNLAdultTree Auto
Form Property CannabisNLRipingTree Auto
Form Property CannabisNLRipeTree Auto
Form Property CannabisPKBabyTree Auto
Form Property CannabisPKInfantTree Auto
Form Property CannabisPKGrowingTree Auto
Form Property CannabisPKFloweringTree Auto
Form Property CannabisPKAdultTree Auto
Form Property CannabisPKRipingTree Auto
Form Property CannabisPKRipeTree Auto
Form Property CannabisSDBabyTree Auto
Form Property CannabisSDInfantTree Auto
Form Property CannabisSDGrowingTree Auto
Form Property CannabisSDFloweringTree Auto
Form Property CannabisSDAdultTree Auto
Form Property CannabisSDRipingTree Auto
Form Property CannabisSDRipeTree Auto
Form Property CannabisAZFloweringMaleTree Auto
Form Property CannabisAZRipeMaleTree Auto
Form Property CannabisDPFloweringMaleTree Auto
Form Property CannabisDPRipeMaleTree Auto
Form Property CannabisJHFloweringMaleTree Auto
Form Property CannabisJHRipeMaleTree Auto
Form Property CannabisNLFloweringMaleTree Auto
Form Property CannabisNLRipeMaleTree Auto
Form Property CannabisPKFloweringMaleTree Auto
Form Property CannabisPKRipeMaleTree Auto
Form Property CannabisSDFloweringMaleTree Auto
Form Property CannabisSDRipeMaleTree Auto

Message Property CannabisPlanterMessage Auto
Message Property CannabisPlanterSeedMessage Auto
Message Property CannabisPlanterSeedPlantedMessage Auto
Message Property CannabisPlanterGrowingMessage Auto
Message Property CannabisPlanterFertilizingMessage Auto
Message Property CannabisPlanterHarvestingMessage Auto
Message Property CannabisPlanterRemovingMessage Auto
Message Property CannabisPlanterPositioningMessage Auto
Message Property CannabisPlanterPlantRipedMessage Auto
Message Property CannabisPlanterPlantDiedMessage Auto

GlobalVariable Property CannabisSeedPlanted Auto
GlobalVariable Property CannabisSeedsPlanted Auto
GlobalVariable Property CannabisPlantsHarvested Auto
GlobalVariable Property CannabisBudsHarvested Auto
GlobalVariable Property CannabisStrain Auto
GlobalVariable Property CannabisSeedWatered Auto
GlobalVariable Property CannabisGrowStage Auto
GlobalVariable Property CannabisIsPlantIndica Auto
GlobalVariable Property CannabisIsPlantMale Auto
GlobalVariable Property CannabisPlantsDying Auto

Event OnLoad()
	CannabisActor = getPlayer()
	BlockActivation(1)
EndEvent

Event OnActivate(objectReference akActivator)
	If akActivator as Actor
		If akActivator == CannabisActor
			CannabisSeedPlanted.SetValue(SeedPlanted)
			CannabisStrain.SetValue(Strain)
			CannabisSeedWatered.SetValue(SeedWatered)
			CannabisGrowStage.SetValue(GrowStage)
			CannabisIsPlantMale.SetValue(IsPlantMale)
			CannabisIsPlantIndica.SetValue(IsPlantIndica)
			MainMenu()
		Else
			Return
		EndIf
	Else
		Return
	EndIf
endEvent

Event OnUpdate()
	If SeedPlanted == 1
		If SeedWatered == 0
			Weather CurrentWeather = Weather.GetCurrentWeather()
			If Weather.GetSkyMode() != 1
				If CurrentWeather.GetClassIfication() == 2
					Watering(False)
				Else
					RegisterForSingleUpdate(UpdateInterval)
				EndIf
			EndIf
		EndIf
	EndIf
EndEvent

Function MainMenu()
	Button = CannabisPlanterMessage.Show()
	If Button == 0
		PickUp()
	ElseIf Button == 1
		SubMenuSeed()
	ElseIf Button == 2
		Watering(True)
	ElseIf Button == 3
		SubMenuFertilizing()
	ElseIf Button == 4
		SubMenuHarvesting()
	ElseIf Button == 5
		SubMenuRemoving()
	ElseIf Button == 6
		SubMenuPositioning()
	ElseIf Button == 7
		Return
	EndIf
EndFunction

Function Watering(Bool WateredWithBottle)
	UnregisterForUpdate()
	xPos = Self.GetPositionX()
	yPos = Self.GetPositionY()
	zPos = Self.GetPositionZ() + intHeight
	CannabisPlanterGrowingMessage.Show()
	SeedWatered = 1 
	If WateredWithBottle == True
		CannabisActor.RemoveItem(CannabisWaterBottle, 1)
		CannabisActor.AddItem(CannabisWaterBottleEmpty, 1)
	EndIf
	If SeedPlanted == 1
		gotoState("Seed")
	Else
		GoToState("Done")
	EndIf	
EndFunction

Function SubMenuPositioning()
	float translateSpeed = 100
	float offset = 5
	float xOffset
	float yOffset
	Button = CannabisPlanterPositioningMessage.Show()
	If Button == 0
		xOffset = offset * cos(GetAngleZ())
		yOffset = offset * -( sin(GetAngleZ()) )
		translateTo(X + xOffset, Y + yOffset, Z, GetAngleX(), GetAngleY(), GetAngleZ(), translateSpeed)	
	ElseIf Button == 1
		xOffset = offset * cos(GetAngleZ())
		yOffset = offset *  -( sin(GetAngleZ()) )
		translateTo(X - xOffset, Y - yOffset, Z, GetAngleX(), GetAngleY(), GetAngleZ(), translateSpeed)
	ElseIf Button == 2
		xOffset = offset * sin(GetAngleZ())
		yOffset = offset * cos(GetAngleZ())
		translateTo(X + xOffset, Y + yOffset, Z, GetAngleX(), GetAngleY(), GetAngleZ(), translateSpeed)
	ElseIf Button == 3
		xOffset = offset * sin(GetAngleZ())
		yOffset = offset * cos(GetAngleZ())
		translateTo(X - xOffset, Y - yOffset, Z, GetAngleX(), GetAngleY(), GetAngleZ(), translateSpeed)	
	ElseIf Button == 4
		translateTo(X, Y, Z + offset, GetAngleX(), GetAngleY(), GetAngleZ(), translateSpeed)
	ElseIf Button == 5
		translateTo(X, Y, Z - offset, GetAngleX(), GetAngleY(), GetAngleZ(), translateSpeed)
	ElseIf Button == 6
		MainMenu()
		Return
	EndIf
	If Button != 6
		SubMenuPositioning()
	EndIf
EndFunction

Function PickUp()
	CannabisPlanterDisabledREF = Self
	CannabisPlanterDisabledREF.Disable()
	CannabisPlanterDisabledREF.Delete()
	CannabisPlacerREF = CannabisActor.placeAtMe(CannabisPlacer, aiCount = 1, abForcePersist = False, abInitiallyDisabled = False)
	CannabisActor.AddItem(CannabisPlacerREF)
	Disable()
	Delete()
	Return
EndFunction

Function SubMenuSeed()
	Button = CannabisPlanterSeedMessage.Show()
	If Button == 0
		PlantSeed(1, 0)
	ElseIf Button == 1
		PlantSeed(2, 0)
	ElseIf Button == 2
		PlantSeed(3, 1)
	ElseIf Button == 3
		PlantSeed(4, 1)
	ElseIf Button == 4
		PlantSeed(5, 1)
	ElseIf Button == 5
		PlantSeed(6, 0)
	ElseIf Button == 6
		Return
	EndIf
EndFunction

Function SubMenuFertilizing()
	Button = CannabisPlanterFertilizingMessage.Show()
	If Button == 0
		Return
	EndIf
EndFunction

Function SubMenuHarvesting()
	Button = CannabisPlanterHarvestingMessage.Show()
	If Button == 0
		If Strain == 1
			HarvestPlant(CannabisAZBud, CannabisAZSeed, 2, 20, 2, 5, 5, 25)
		ElseIf Strain == 2
			HarvestPlant(CannabisDPBud, CannabisDPSeed, 2, 30, 2, 7, 5, 35)	
		ElseIf Strain == 3
			HarvestPlant(CannabisJHBud, CannabisJHSeed, 1, 10, 1, 3, 1, 15)	 	
		ElseIf Strain == 4
			HarvestPlant(CannabisNLBud, CannabisNLSeed, 1, 20, 1, 5, 1, 25)	
		ElseIf Strain == 5
			HarvestPlant(CannabisPKBud, CannabisPKSeed, 1, 20, 1, 5, 1, 25)	
		ElseIf Strain == 6
			HarvestPlant(CannabisSDBud, CannabisSDSeed, 2, 30, 2, 7, 5, 35)					
		EndIf
	EndIf
EndFunction

Function SubMenuRemoving()
	Button = CannabisPlanterRemovingMessage.Show()
	If Button == 0
		CannabisPlantDisabledREF = CannabisPlantREF
		CannabisPlantREF.Disable()
		CannabisPlantREF.Delete()
		CannabisPlantDisabledREF.Disable(True)
		CannabisPlantDisabledREF.Delete()
		CleanUp()
		GoToState("Done")
	ElseIf Button == 1	
		Return
	EndIf
EndFunction

State Seed 
	Event OnBeginState()
		rndInt = RandomInt(24, 48)
		WaitGameTime(rndInt)
		If SeedPlanted == 1
			gotoState("Seedling")
		Else
			GoToState("Done")
		EndIf	
	EndEvent
EndState

State Seedling
	Event OnBeginState()
		CannabisPlantREF = Self.PlaceAtMe(CannabisSeedling, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True)
		;Utility.Wait(0.1)
		CannabisPlantREF.SetPosition(xPos, yPos, zPos)
		rndFloat = RandomFloat(1, 1.5)
		rndIntPlantAngle = RandomInt(1, 359)
		CannabisPlantREF.SetScale(rndFloat)
		CannabisPlantREF.SetAngle(0.0, 0.0, rndIntPlantAngle)
		CannabisPlantREF.Enable()
		GrowStage = 1
		rndInt = RandomInt(24, 48)
		WaitGameTime(rndInt)
		rndFloat = RandomFloat(1.6, 2.1)
		CannabisPlantREF.SetScale(rndFloat)		
		GrowStage = 2
		rndInt = RandomInt(24, 48)
		WaitGameTime(rndInt)
		If SeedPlanted == 1
			gotoState("Baby")
		Else
			GoToState("Done")
		EndIf	
	EndEvent
EndState

State Baby
	Event OnBeginState()
		CannabisPlantDisabledREF = CannabisPlantREF
		CannabisPlantDisabledREF.Disable(True)
		If Strain == 0
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisAZBaby, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisAZBabyTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf
		ElseIf Strain == 2
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisDPBaby, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisDPBabyTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf						
		ElseIf Strain == 3
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisJHBaby, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisJHBabyTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf					
		ElseIf Strain == 4
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisNLBaby, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisNLBabyTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf					
		ElseIf Strain == 5
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisPKBaby, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisPKBabyTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf				
		ElseIf Strain == 6
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisSDBaby, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisSDBabyTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf				
		EndIf
		;Utility.Wait(0.1)
		CannabisPlantREF.SetPosition(xPos, yPos, zPos)
		If IsPlantIndica
			PlantScale = RandomFloat(1.2, 1.6)
		Else
			PlantScale = RandomFloat(1.6, 2.0)
		EndIf
		CannabisPlantREF.SetScale(PlantScale)
		CannabisPlantREF.SetAngle(0.0, 0.0, rndIntPlantAngle)
		CannabisPlantREF.Enable() 
		GrowStage = 3
		rndInt = RandomInt(24, 48)
		WaitGameTime(rndInt)
		If SeedPlanted == 1
			gotoState("Infant")
		Else
			GoToState("Done")
		EndIf	
	EndEvent
EndState

State Infant
	Event OnBeginState()
		CannabisPlantDisabledREF = CannabisPlantREF  
		CannabisPlantDisabledREF.Disable(True)
		If Strain == 1
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisAZInfant, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisAZInfantTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf	
		ElseIf Strain == 2
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisDPInfant, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisDPInfantTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf	 						
		ElseIf Strain == 3
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisJHInfant, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisJHInfantTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf						
		ElseIf Strain == 4
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisNLInfant, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisNLInfantTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf						
		ElseIf Strain == 5
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisPKInfant, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisPKInfantTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf						
		ElseIf Strain == 6
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisSDInfant, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisSDInfantTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf						
		EndIf
		;Utility.Wait(0.1)
		CannabisPlantREF.SetPosition(xPos, yPos, zPos)
		If IsPlantIndica
			rndFloat = RandomFloat(1, 1.2)
		Else
			rndFloat = RandomFloat(1, 1.3)
		EndIf
		PlantScale = PlantScale * rndFloat
		CannabisPlantREF.SetScale(PlantScale)
		CannabisPlantREF.SetAngle(0.0, 0.0, rndIntPlantAngle)
		CannabisPlantREF.Enable() 
		GrowStage = 4
		rndInt = RandomInt(24, 48)
		WaitGameTime(rndInt)
		If SeedPlanted == 1
			gotoState("Growing")
		Else
			GoToState("Done")
		EndIf	
	EndEvent
EndState

State Growing
	Event OnBeginState()
		PlantScale = 1
		CannabisPlantDisabledREF = CannabisPlantREF  
		CannabisPlantDisabledREF.Disable(True)
		If Strain == 1
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisAZGrowing, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisAZGrowingTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf	
		ElseIf Strain == 2
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisDPGrowing, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisDPGrowingTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf							
		ElseIf Strain == 3
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisJHGrowing, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisJHGrowingTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf	
		ElseIf Strain == 4
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisNLGrowing, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisNLGrowingTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf				
		ElseIf Strain == 5
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisPKGrowing, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisPKGrowingTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf						
		ElseIf Strain == 6
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisSDGrowing, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisSDGrowingTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf						
		EndIf
		;Utility.Wait(0.1)
		CannabisPlantREF.SetPosition(xPos, yPos, zPos)
		If IsPlantIndica
			rndFloat = RandomFloat(1, 1.1)
		Else
			rndFloat = RandomFloat(1, 1.2)
		EndIf
		PlantScale = PlantScale * rndFloat
		CannabisPlantREF.SetScale(PlantScale)
		CannabisPlantREF.SetAngle(0.0, 0.0, rndIntPlantAngle)
		CannabisPlantREF.Enable() 
		GrowStage = 5
		rndInt = RandomInt(24, 48)
		WaitGameTime(rndInt)
		If SeedPlanted == 1
			gotoState("Flowering")
		Else
			GoToState("Done")
		EndIf	
	EndEvent
EndState

State Flowering 
	Event OnBeginState()
		PlantScale = 1.1
		CannabisPlantDisabledREF = CannabisPlantREF  
		CannabisPlantDisabledREF.Disable(True)
		If Strain == 1
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisAZFlowering, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisAZFloweringTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			Else
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisAZFloweringMale, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisAZFloweringMaleTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf
		ElseIf Strain == 2
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisDPFlowering, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisDPFloweringTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			Else
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisDPFloweringMale, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisDPFloweringMaleTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf								
		ElseIf Strain == 3
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisJHFlowering, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisJHFloweringTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			Else
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisJHFloweringMale, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisJHFloweringMaleTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf						
		ElseIf Strain == 4
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisNLFlowering, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisNLFloweringTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			Else
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisNLFloweringMale, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisNLFloweringMaleTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf	
		ElseIf Strain == 5
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisPKFlowering, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisPKFloweringTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			Else
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisPKFloweringMale, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisPKFloweringMaleTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf					
		ElseIf Strain == 6
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisSDFlowering, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisSDFloweringTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			Else
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisSDFloweringMale, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisSDFloweringMaleTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf										
		EndIf
		;Utility.Wait(0.1)
		CannabisPlantREF.SetPosition(xPos, yPos, zPos)
		If IsPlantIndica
			rndFloat = RandomFloat(1, 1.1)
			If IsPlantMale
				rndFloat = RandomFloat(1, 1.1)
			EndIf
		Else
			rndFloat = RandomFloat(1, 1.1)
			If IsPlantMale
				rndFloat = RandomFloat(1, 1.1)
			EndIf
		EndIf
		PlantScale = PlantScale * rndFloat
		CannabisPlantREF.SetScale(PlantScale)
		CannabisPlantREF.SetAngle(0.0, 0.0, rndIntPlantAngle)
		CannabisPlantREF.Enable() 
		GrowStage = 6
		rndInt = RandomInt(24, 48)
		WaitGameTime(rndInt)	
		If SeedPlanted == 1
			gotoState("Adult")
		Else
			GoToState("Done")
		EndIf	
	EndEvent
EndState

State Adult
	Event OnBeginState()
		CannabisPlantDisabledREF = CannabisPlantREF  
		CannabisPlantDisabledREF.Disable(True)
		If Strain == 1
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisAZAdult, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisAZAdultTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf
		ElseIf Strain == 2
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisDPAdult, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisDPAdultTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf										
		ElseIf Strain == 3
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisJHAdult, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisJHAdultTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf									
		ElseIf Strain == 4
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisNLAdult, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisNLAdultTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf
		ElseIf Strain == 5
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisPKAdult, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisPKAdultTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf							
		ElseIf Strain == 6
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisSDAdult, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisSDAdultTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf	
		EndIf
		;Utility.Wait(0.1)
		CannabisPlantREF.SetPosition(xPos, yPos, zPos)
		CannabisPlantREF.SetScale(PlantScale)
		CannabisPlantREF.SetAngle(0.0, 0.0, rndIntPlantAngle)
		CannabisPlantREF.Enable() 
		GrowStage = 7
		rndInt = RandomInt(24, 48)
		WaitGameTime(rndInt)		
		If SeedPlanted == 1
			gotoState("Riping")
		Else
			GoToState("Done")
		EndIf	
	EndEvent
EndState

State Riping 
	Event OnBeginState()
		CannabisPlantDisabledREF = CannabisPlantREF  
		CannabisPlantDisabledREF.Disable(True)
		If Strain == 1
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisAZRiping, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisAZRipingTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			Else
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisAZRipeMale, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisAZRipeMaleTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf	
		ElseIf Strain == 2
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisDPRiping, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisDPRipingTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			Else
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisDPRipeMale, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisDPRipeMaleTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf										
		ElseIf Strain == 3
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisJHRiping, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisJHRipingTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			Else
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisJHRipeMale, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisJHRipeMaleTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf								
		ElseIf Strain == 4
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisNLRiping, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisNLRipingTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			Else
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisNLRipeMale, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisNLRipeMaleTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf		
		ElseIf Strain == 5
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisPKRiping, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisPKRipingTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			Else
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisPKRipeMale, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisPKRipeMaleTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf						
		ElseIf Strain == 6
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisSDRiping, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisSDRipingTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			Else
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisSDRipeMale, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisSDRipeMaleTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf											
		EndIf
		;Utility.Wait(0.1)
		CannabisPlantREF.SetPosition(xPos, yPos, zPos)
		CannabisPlantREF.SetScale(PlantScale)
		CannabisPlantREF.SetAngle(0.0, 0.0, rndIntPlantAngle)
		CannabisPlantREF.Enable() 
		GrowStage = 8
		rndInt = RandomInt(24, 48)
		WaitGameTime(rndInt)
		If SeedPlanted == 1
			gotoState("Ripe")
		Else
			GoToState("Done")
		EndIf		
	EndEvent
EndState

State Ripe
	Event OnBeginState()
		CannabisPlantDisabledREF = CannabisPlantREF  
		CannabisPlantDisabledREF.Disable(True)
		If Strain == 1
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisAZRipe, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisAZRipeTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf
		ElseIf Strain == 2
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisDPRipe, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisDPRipeTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf									
		ElseIf Strain == 3
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisJHRipe, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisJHRipeTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf								
		ElseIf Strain == 4
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisNLRipe, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisNLRipeTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf	
		ElseIf Strain == 5
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisPKRipe, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisPKRipeTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf					
		ElseIf Strain == 6
			If IsPlantMale == 0
				If IsInInterior()
					CannabisPlantREF = Self.PlaceAtMe(CannabisSDRipe, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				Else
					CannabisPlantREF = Self.PlaceAtMe(CannabisSDRipeTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
				EndIf	
			EndIf										
		EndIf
		;Utility.Wait(0.1)
		CannabisPlantREF.SetScale(PlantScale)
		CannabisPlantREF.SetPosition(xPos, yPos, zPos)
		CannabisPlantREF.SetAngle(0.0, 0.0, rndIntPlantAngle)
		CannabisPlantREF.Enable() 
		GrowStage = 9
		CannabisPlanterPlantRipedMessage.Show()
		rndInt = RandomInt(168, 336)
		WaitGameTime(rndInt)
		If CannabisPlantsDying.GetValue() == 1
			If SeedPlanted == 1
				GoToState("Dead")
			Else
				GoToState("Done")
			EndIf
		; ElseIf CannabisPlantsDying.GetValue() == 0
			; GoToState("Done")
		EndIf
	EndEvent
EndState

State Dead
	Event OnBeginState()
		CannabisPlantDisabledREF = CannabisPlantREF
		CannabisPlantDisabledREF.Disable(True)
		If IsPlantIndica == 1
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisIndicaDead, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisIndicaDeadTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf		
		Else	
			If IsInInterior()
				CannabisPlantREF = Self.PlaceAtMe(CannabisSativaDead, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			Else
				CannabisPlantREF = Self.PlaceAtMe(CannabisSativaDeadTree, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True) 
			EndIf	
		EndIf
		;Utility.Wait(0.1)
		CannabisPlantREF.SetPosition(xPos, yPos, zPos)
		CannabisPlantREF.SetScale(PlantScale)
		CannabisPlantREF.SetAngle(0.0, 0.0, rndIntPlantAngle)
		CannabisPlantREF.Enable() 
		GrowStage = 10
		CannabisPlanterPlantDiedMessage.Show()
		GoToState("Done")
	EndEvent			
EndState

State Done
	Event OnBeginState()
		GoToState("")
	EndEvent
EndState

Function PlantSeed(Int CannabisPlantStrain, Int CannabisPlantIsIndica)
	IsPlantMale = RandomInt(0, 1)
	If CannabisPlantStrain == 1
		CannabisActor.RemoveItem(CannabisAZSeed, 1)
	ElseIf CannabisPlantStrain == 2
		CannabisActor.RemoveItem(CannabisDPSeed, 1)
	ElseIf CannabisPlantStrain == 3
		CannabisActor.RemoveItem(CannabisJHSeed, 1)
	ElseIf CannabisPlantStrain == 4
		CannabisActor.RemoveItem(CannabisNLSeed, 1)
	ElseIf CannabisPlantStrain == 5
		CannabisActor.RemoveItem(CannabisPKSeed, 1)
	ElseIf CannabisPlantStrain == 6
		CannabisActor.RemoveItem(CannabisSDSeed, 1)
	EndIf
	Strain = CannabisPlantStrain
	IsPlantIndica  = CannabisPlantIsIndica
	SeedPlanted = 1
	CannabisSeedsPlanted.SetValue(CannabisSeedsPlanted.GetValue() + 1)
	CannabisPlanterSeedPlantedMessage.Show()
	RegisterForSingleUpdate(UpdateInterval)
	Return
EndFunction

Function HarvestPlant(Form CannabisBud, Form CannabisSeed, \
					  Int CannabisBudsMin, Int CannabisBudsMax, \
					  Int CannabisSeedsMin, Int CannabisSeedsMax, \
					  Int CannabisFibersMin, Int CannabisFibersMax)
	If CannabisActor.HasPerk(GreenThumb)
		YieldFactor = 2
	EndIf
	CannabisPlantDisabledREF = CannabisPlantREF  
	CannabisPlantREF.Disable()
	CannabisPlantDisabledREF.Disable(True)
	CannabisPlantDisabledREF.Delete()
	If IsPlantMale == 0 && Growstage == 9
		rndInt = RandomInt(CannabisBudsMin, CannabisBudsMax) * YieldFactor
		CannabisActor.AddItem(CannabisBud, rndInt)
		rndInt = RandomInt(CannabisSeedsMin, CannabisSeedsMax) * YieldFactor
		CannabisActor.AddItem(CannabisSeed, rndInt)
		CannabisBudsHarvested.SetValue(CannabisBudsHarvested.GetValue() + 1)	
		If CannabisBudsHarvested.GetValue() as Int % 25 == 0
			CannabisActor.additem(CannabisCharras, YieldFactor)
		EndIf		
	ElseIf IsPlantMale == 1 || Growstage == 10
		rndInt = RandomInt(CannabisFibersMin, CannabisFibersMax) * YieldFactor
		CannabisActor.AddItem(CannabisFibers, rndInt)  
	EndIf  
	CannabisPlantsHarvested.SetValue(CannabisPlantsHarvested.GetValue() + 1)
	CleanUp()
	GoToState("Done")
EndFunction

Function CleanUp()
	SeedPlanted = 0   
	SeedWatered = 0  
	Strain = 0  
	GrowStage = 0  
	IsPlantMale = 0
	IsPlantIndica = 0
	Return
EndFunction