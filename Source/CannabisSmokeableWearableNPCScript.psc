Scriptname CannabisSmokeableWearableNPCScript extends ObjectReference  

Message Property CannabisSmokeableNPCMessage Auto
Armor Property CannabisSmokeableNPC Auto
Spell Property CannabisNPCSmokeAbility Auto

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	Actor CannabisActor = akNewContainer as Actor
	If CannabisActor != Game.GetPlayer() 
		CannabisActor.AddSpell(CannabisNPCSmokeAbility)
	endIf
endEvent

Event OnEquipped(Actor akActor)
	if akActor == Game.GetPlayer()
		akActor.UnequipItem(CannabisSmokeableNPC)
		akActor.RemoveItem(CannabisSmokeableNPC)
		CannabisSmokeableNPCMessage.Show()
		Disable()
		Delete()
	EndIf
endEvent