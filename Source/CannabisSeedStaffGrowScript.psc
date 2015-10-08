Scriptname CannabisSeedStaffGrowScript extends CannabisGrowScript  

Int Property SeedStrain Auto
Int Property SeedIsPlantIndica Auto

Event OnInit()
	SeedWatered = 0
	SeedPlanted = 1
	GrowStage = 0
	Strain = SeedStrain
	IsPlantIndica = SeedIsPlantIndica
	IsPlantMale = Utility.RandomInt(0, 1)
	CannabisSeedPlanted.SetValue(SeedPlanted)
	CannabisStrain.SetValue(Strain)
	CannabisSeedWatered.SetValue(SeedWatered)
	CannabisGrowStage.SetValue(GrowStage)
	CannabisIsPlantMale.SetValue(IsPlantMale)
	CannabisIsPlantIndica.SetValue(IsPlantIndica)
	CannabisSeedsPlanted.SetValue(CannabisSeedsPlanted.GetValue() + 1)
	RegisterForSingleUpdate(0)
EndEvent

Event OnUpdate()
	If SeedPlanted == 1
		If SeedWatered == 0
			Watering(False)
		EndIf
	EndIf
EndEvent

State Done
	Event OnBeginState()
		Self.Disable()
		CannabisPlantDisabledREF = CannabisPlantREF
		CannabisPlantREF.Disable()
		CannabisPlantREF.Delete()
		CannabisPlantDisabledREF.Disable()
		CannabisPlantDisabledREF.Delete()
		CleanUp()
		Self.Delete()
		GoToState("")
	EndEvent
EndState