Scriptname CannabisSeedPlacerRefAliasScript extends ReferenceAlias  

Activator Property CannabisAZSeedPlanter Auto
Activator Property CannabisDPSeedPlanter Auto
Activator Property CannabisJHSeedPlanter Auto
Activator Property CannabisNLSeedPlanter Auto
Activator Property CannabisPKSeedPlanter Auto
Activator Property CannabisSDSeedPlanter Auto

Potion Property CannabisAZSeed Auto	
Potion Property CannabisDPSeed Auto	
Potion Property CannabisJHSeed Auto	
Potion Property CannabisNLSeed Auto	
Potion Property CannabisPKSeed Auto	
Potion Property CannabisSDSeed Auto	

Event OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
	if !akDestContainer
		If Game.GetPlayer().IsSneaking()
			if akBaseItem == CannabisAZSeed
				if aiItemCount == 1
					Game.DisablePlayerControls(abMenu = True)
					ObjectReference CannabisActivatorREF = Game.GetPlayer().PlaceAtMe(CannabisAZSeedPlanter, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True)
					Int rndInt = Utility.RandomInt(1, 359)
					CannabisActivatorREF.Disable()
					CannabisActivatorREF.SetScale(2)
					CannabisActivatorREF.SetAngle(0.0, 0.0, rndInt)
					CannabisActivatorREF.Enable()
					akItemReference.Delete()
					Game.EnablePlayerControls(abMenu = True)
				endif
			ElseIf akBaseItem == CannabisDPSeed
				if aiItemCount == 1
					Game.DisablePlayerControls(abMenu = True)
					ObjectReference CannabisActivatorREF = Game.GetPlayer().PlaceAtMe(CannabisDPSeedPlanter, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True)
					akItemReference.Disable()
					Int rndInt = Utility.RandomInt(1, 359)
					CannabisActivatorREF.Disable()
					CannabisActivatorREF.SetScale(2)
					CannabisActivatorREF.SetAngle(0.0, 0.0, rndInt)
					CannabisActivatorREF.Enable()
					akItemReference.Delete()
					Game.EnablePlayerControls(abMenu = True)
				endif			
			ElseIf akBaseItem == CannabisJHSeed
				if aiItemCount == 1			
					Game.DisablePlayerControls(abMenu = True)
					ObjectReference CannabisActivatorREF = Game.GetPlayer().PlaceAtMe(CannabisJHSeedPlanter, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True)
					akItemReference.Disable()
					Int rndInt = Utility.RandomInt(1, 359)
					CannabisActivatorREF.Disable()
					CannabisActivatorREF.SetScale(2)
					CannabisActivatorREF.SetAngle(0.0, 0.0, rndInt)
					CannabisActivatorREF.Enable()
					akItemReference.Delete()
					Game.EnablePlayerControls(abMenu = True)
				endif			
			ElseIf akBaseItem == CannabisNLSeed
				if aiItemCount == 1			
					Game.DisablePlayerControls(abMenu = True)
					ObjectReference CannabisActivatorREF = Game.GetPlayer().PlaceAtMe(CannabisNLSeedPlanter, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True)
					akItemReference.Disable()
					Int rndInt = Utility.RandomInt(1, 359)
					CannabisActivatorREF.Disable()
					CannabisActivatorREF.SetScale(2)
					CannabisActivatorREF.SetAngle(0.0, 0.0, rndInt)
					CannabisActivatorREF.Enable()
					akItemReference.Delete()
					Game.EnablePlayerControls(abMenu = True)
				endif			
			ElseIf akBaseItem == CannabisPKSeed
				if aiItemCount == 1			
					Game.DisablePlayerControls(abMenu = True)
					ObjectReference CannabisActivatorREF = Game.GetPlayer().PlaceAtMe(CannabisPKSeedPlanter, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True)
					akItemReference.Disable()
					Int rndInt = Utility.RandomInt(1, 359)
					CannabisActivatorREF.Disable()
					CannabisActivatorREF.SetScale(2)
					CannabisActivatorREF.SetAngle(0.0, 0.0, rndInt)
					CannabisActivatorREF.Enable()
					akItemReference.Delete()
					Game.EnablePlayerControls(abMenu = True)
				endif		
			ElseIf akBaseItem == CannabisSDSeed
				if aiItemCount == 1			
					Game.DisablePlayerControls(abMenu = True)
					ObjectReference CannabisActivatorREF = Game.GetPlayer().PlaceAtMe(CannabisSDSeedPlanter, aiCount = 1, abForcePersist = False, abInitiallyDisabled = True)
					akItemReference.Disable()
					Int rndInt = Utility.RandomInt(1, 359)
					CannabisActivatorREF.Disable()
					CannabisActivatorREF.SetScale(2)
					CannabisActivatorREF.SetAngle(0.0, 0.0, rndInt)
					CannabisActivatorREF.Enable()
					akItemReference.Delete()
					Game.EnablePlayerControls(abMenu = True)
				endif			
			endif
		EndIf
	EndIf
endEvent