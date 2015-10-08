Scriptname CannabisBookScript extends ObjectReference  

Perk Property CannabisHighRollerBeginner Auto
Perk Property CannabisHighWrapperBeginner Auto

Event OnRead()
	If Game.GetPlayer().HasPerk(CannabisHighRollerBeginner)	== 0
		Game.GetPlayer().AddPerk(CannabisHighRollerBeginner)
	EndIf
	If Game.GetPlayer().HasPerk(CannabisHighWrapperBeginner) == 0
		Game.GetPlayer().AddPerk(CannabisHighWrapperBeginner)
	EndIf
EndEvent