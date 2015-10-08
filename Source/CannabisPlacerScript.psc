Scriptname CannabisPlacerScript extends ReferenceAlias 

Activator Property CannabisActivator Auto

MiscObject Property CannabisMiscObject Auto	

Event OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
	if !akDestContainer
		if akBaseItem == CannabisMiscObject
			if aiItemCount == 1
				Game.DisablePlayerControls(abMenu = True)
				akItemReference.Delete()
				ObjectReference CannabisActivatorREF = Game.GetPlayer().PlaceAtMe(CannabisActivator)
				Int rndInt = Utility.RandomInt(1, 359)
				CannabisActivatorREF.Disable()
				CannabisActivatorREF.SetAngle(0.0, 0.0, rndInt)
				CannabisActivatorREF.Enable()
				Game.EnablePlayerControls(abMenu = True)
			endif
		endif
	endif
endEvent