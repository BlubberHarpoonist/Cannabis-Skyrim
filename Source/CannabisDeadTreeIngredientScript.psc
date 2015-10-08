Scriptname CannabisDeadTreeIngredientScript extends ObjectReference  

GlobalVariable Property CannabisPlantsHarvested Auto

Perk Property GreenThumb Auto

MiscObject Property CannabisFibers Auto

Ingredient Property CannabisTreeIngredient Auto

Int Property YieldFibersMin Auto
Int Property YieldFibersMax Auto
Int Property YieldFactor = 1 Auto Hidden

Event OnInit()
	Actor myPlayer = Game.GetPlayer()
	Int YieldFibers = Utility.RandomInt(YieldFibersMin, YieldFibersMax) * YieldFactor
	myPlayer.AddItem(CannabisFibers, YieldFibers)
	Int TreeIngredientCount = myPlayer.GetItemCount(CannabisTreeIngredient)
	myPlayer.RemoveItem(CannabisTreeIngredient, TreeIngredientCount, True)
	CannabisPlantsHarvested.SetValue(CannabisPlantsHarvested.GetValue() + 1)
EndEvent