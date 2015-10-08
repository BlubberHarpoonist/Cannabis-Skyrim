Scriptname CannabisAttractNPCRefAliasQuestScript extends Quest  

Event OnInit()
	RegisterForSingleUpdate(5)
	GotoState ("polling")
EndEvent
 
State polling	
	Event OnUpdate()			
		if Self.GetStage() == 10
			;debug.Notification("CannabisAttractNPCRefAliasQuestScript Updating")
			Self.Stop()
			Utility.Wait(0.5)
			Self.Start()
			RegisterForSingleUpdate(5)
		Else
			;Debug.Notification("No need to search on")
			UnregisterForUpdate()
			GotoState ("active") ; Switch to a state that doesn't use OnUpdate()
		endif
	EndEvent
EndState
 
State active
	; Do nothing in here
EndState