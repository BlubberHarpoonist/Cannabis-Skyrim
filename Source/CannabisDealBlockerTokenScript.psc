Scriptname CannabisDealBlockerTokenScript extends ObjectReference  

Armor Property CannabisDealBlockerToken Auto

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	Actor CannabisActor = akNewContainer as Actor
	if akNewContainer != Game.GetPlayer()
		Utility.WaitGameTime(24)
		CannabisActor.RemoveItem(CannabisDealBlockerToken)
		Disable()
		Delete()
	endIf
endEvent