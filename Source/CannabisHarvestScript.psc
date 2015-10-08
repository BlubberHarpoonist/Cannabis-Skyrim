Scriptname CannabisHarvestScript extends ObjectReference
 
Activator property CannabisPlant auto

potion property BudsHarvested auto
potion property SeedsHarvested auto
potion property CharrasHarvested auto

Form property CannabisFibers auto

bool property deleteSelfOnHarvest = false auto

message property FailureMessage auto

globalVariable property CannabisDaysToResetHarvest auto
globalVariable property CannabisPlantsHarvested auto

float property lastHarvestedDay auto Hidden

sound property HarvestSound auto

auto state readyForHarvest
	event onActivate(objectReference akActivator)
		goToState("waitingToRespawn")
		CannabisHarvest(akActivator)
		if deleteSelfOnHarvest
			disable()
			delete()
		endif
	endEvent
endState

state waitingToRespawn
	event onBeginState()
		lastHarvestedDay = utility.getCurrentGameTime()
	endEvent

	event onActivate(objectReference akActivator)
		FailureMessage.show()
	endEvent

	event onCellLoad()
		if (lastHarvestedDay + CannabisDaysToResetHarvest.getValue()) <= utility.getCurrentGameTime()
			goToState("readyForHarvest")
			Self.SetDestroyed(False)
			self.PlayGamebryoAnimation("Backward")
		endif
	endEvent
endState

function CannabisHarvest(objectReference akActivator)
	int rndInt = 0
	if (akActivator as actor)
		HarvestSound.play(self)
		self.PlayGamebryoAnimation("Forward")
		Self.SetDestroyed(True)
		if BudsHarvested
			rndInt = Utility.RandomInt(5, 15)
			(akActivator as actor).addItem(BudsHarvested, rndInt, false)
		endif
		if SeedsHarvested
			rndInt = Utility.RandomInt(2, 7)
			(akActivator as actor).addItem(SeedsHarvested, rndInt, false)
		endif
		if CharrasHarvested
			;Float rndFloat = Utility.RandomFloat(-0.3, 0)
			;(akActivator as actor).addItem(CharrasHarvested, rndFloat, false)
		endif
		if CannabisFibers
			(akActivator as actor).addItem(CannabisFibers, 1, false)
		endif
		CannabisPlantsHarvested.SetValue(CannabisPlantsHarvested.GetValue() + 1)
	endif
endFunction