Scriptname CannabisActor02RefAliasScript extends ReferenceAlias  

Actor Property CannabisActor Auto

;Armor Property CannabisSmokeableWearableNPC Auto
Armor Property CannabisSatchelWearable Auto

VisualEffect Property CannabisSmokeExhaleEffect Auto

Idle Property IdleStop_Loose Auto

Package Property CannabisActor02ForceGreetPackage Auto

Event OnLoad() ;OnCellAttach()
	CannabisActor.setdontmove()
	CannabisActor.EquipItem(CannabisSatchelWearable)
	CannabisActor.SetHeadTracking(false)
	Debug.SendAnimationEvent(CannabisActor, "CannabisSmokeLongPipeCrossLeggedCycle")
	RegisterForSingleUpdate(7)
EndEvent

Event OnUpdate()
	If Game.GetPlayer().GetCurrentLocation() == CannabisActor.GetCurrentLocation()
		CannabisSmokeExhaleEffect.Play(CannabisActor, -1)
		utility.wait(3)
		CannabisSmokeExhaleEffect.Stop(CannabisActor)
		if (CannabisActor.GetCurrentPackage() == CannabisActor02ForceGreetPackage)
			UnregisterForUpdate()
			CannabisActor.PlayIdle(IdleStop_Loose)
			Debug.messagebox("Kitty smells something!")
			CannabisActor.EvaluatePackage()
		Else
			RegisterForSingleUpdate(7)
		endIf
	Else
		UnregisterForUpdate()
	EndIf
EndEvent

Event OnDeath(Actor akKiller)
	UnregisterForUpdate()
	CannabisSmokeExhaleEffect.Stop(CannabisActor)
	;CannabisActor.PlayIdle(IdleStop_Loose)
	CannabisActor.Kill()
EndEvent