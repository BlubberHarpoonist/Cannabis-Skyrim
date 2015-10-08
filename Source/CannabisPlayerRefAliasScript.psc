Scriptname CannabisPlayerRefAliasScript extends ReferenceAlias  

MiscObject Property CannabisOptions Auto
ReferenceAlias Property CannabisOptionsRefAlias Auto

Auto State AddCannabisOptions
	Event OnBeginState()
		CannabisOptionsRefAlias.ForceRefTo(Game.GetPlayer().PlaceAtMe(CannabisOptions, 1, false, False))
		Game.GetPlayer().AddItem(CannabisOptionsRefAlias.GetReference(), 1, 0)
		;CannabisOptionsRefAlias.GetReference().Enable()
		GoToState("Done")
	EndEvent
EndState

State Done

EndState