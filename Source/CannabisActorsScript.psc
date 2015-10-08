Scriptname CannabisActorsScript extends ObjectReference  

Actor Property CannabisActor Auto

Armor Property CannabisSmokeableWearableNPC Auto
Armor Property CannabisSatchelWearable Auto

VisualEffect Property CannabisSmokeEffect Auto

Event OnLoad()
	CannabisActor.EquipItem(CannabisSatchelWearable)
	CannabisActor.EquipItem(CannabisSmokeableWearableNPC)
	CannabisSmokeEffect.Play(CannabisActor, -1)
	CannabisActor.EvaluatePackage()
EndEvent

Event OnDeath(Actor akKiller)
	CannabisActor.UnequipItem(CannabisSmokeableWearableNPC)
	CannabisSmokeEffect.Stop(CannabisActor)
	CannabisActor.RemoveItem(CannabisSmokeableWearableNPC)
EndEvent