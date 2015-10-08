Scriptname CannabisTreeIngredientScript extends ObjectReference 

GlobalVariable Property CannabisPlantsHarvested Auto
GlobalVariable Property CannabisBudsHarvested Auto

Perk Property GreenThumb Auto

Potion Property CannabisBud Auto
Potion Property CannabisSeed Auto
Potion Property CannabisCharras Auto

Ingredient Property CannabisTreeIngredient Auto

Int Property YieldBudsMin Auto
Int Property YieldBudsMax Auto
Int Property YieldSeedsMin Auto
Int Property YieldSeedsMax Auto
Int Property YieldFactor = 1 Auto Hidden

Event OnInit()
	Actor myPlayer = Game.GetPlayer()
	If myPlayer.HasPerk(GreenThumb) == 1
		YieldFactor = 2
	EndIf
	Int YieldBuds = Utility.RandomInt(YieldBudsMin, YieldBudsMax) * YieldFactor
	myPlayer.AddItem(CannabisBud, YieldBuds)
	Int YieldSeeds = Utility.RandomInt(YieldSeedsMin, YieldSeedsMax) * YieldFactor
	myPlayer.AddItem(CannabisSeed, YieldSeeds)
	Int TreeIngredientCount = myPlayer.GetItemCount(CannabisTreeIngredient)
	myPlayer.RemoveItem(CannabisTreeIngredient, TreeIngredientCount, True)
	CannabisPlantsHarvested.SetValue(CannabisPlantsHarvested.GetValue() + 1)
	CannabisBudsHarvested.SetValue(CannabisBudsHarvested.GetValue() + 1)
	If (CannabisBudsHarvested.GetValue() as Int) % 25 == 0
		myPlayer.additem(CannabisCharras, YieldFactor)
	EndIf
EndEvent