Scriptname CannabisYourHighnessVendorScript extends ObjectReference  

Actor Property CannabisActor Auto

Armor Property CannabisBluntWearableNPC Auto

VisualEffect Property CannabisSmokeEffect Auto

;Idle property CannabisSmokingIdle Auto
Idle Property IdleStop_Loose Auto

Event OnLoad()
	CannabisActor.SetHeadTracking(false)
	Debug.SendAnimationEvent(CannabisActor, "CannabisSmokeBlunt")
	utility.wait(9.0)
	CannabisActor.PlayIdle(IdleStop_Loose) ;CannabisActor.PlayIdle(IdleForceDefaultState)
	CannabisActor.SetHeadTracking(true)
	CannabisActor.EquipItem(CannabisBluntWearableNPC)
	CannabisSmokeEffect.Play(CannabisActor, -1)
	CannabisActor.EvaluatePackage()
EndEvent

Event OnDeath(Actor akKiller)
	CannabisActor.UnequipItem(CannabisBluntWearableNPC)
	CannabisSmokeEffect.Stop(CannabisActor)
	CannabisActor.RemoveItem(CannabisBluntWearableNPC)
EndEvent