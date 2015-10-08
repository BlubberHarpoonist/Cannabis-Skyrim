Scriptname CannabisPlacedItemScript extends ObjectReference  

Message Property CannabisPlanterPositioningMessage Auto

;Activator Property CannabisActivator Auto

MiscObject Property CannabisItem Auto

Event OnLoad()
	BlockActivation()
EndEvent

Event OnActivate(ObjectReference activator)
	if Game.GetPlayer().IsSneaking() == True
		Game.GetPlayer().AddItem(CannabisItem, 1)
		Disable()
		Delete()
		Return
	Else
		Positioning()
	EndIf
EndEvent

Function Positioning()
	Int Button
	float translateSpeed = 100
	float offset = 5
	float xOffset
	float yOffset
	
	Button = CannabisPlanterPositioningMessage.Show()

		
	if Button == 0
		xOffset = offset * math.cos(GetAngleZ())
		yOffset = offset * -( math.sin(GetAngleZ()) )
		translateTo(X + xOffset, Y + yOffset, Z, GetAngleX(), GetAngleY(), GetAngleZ(), translateSpeed)
		
	elseif Button == 1
		xOffset = offset * math.cos(GetAngleZ())
		yOffset = offset *  -( math.sin(GetAngleZ()) )
		translateTo(X - xOffset, Y - yOffset, Z, GetAngleX(), GetAngleY(), GetAngleZ(), translateSpeed)
		
	elseif Button == 2
		xOffset = offset * math.sin(GetAngleZ())
		yOffset = offset * math.cos(GetAngleZ())
		translateTo(X + xOffset, Y + yOffset, Z, GetAngleX(), GetAngleY(), GetAngleZ(), translateSpeed)
		
	elseif Button == 3
		xOffset = offset * math.sin(GetAngleZ())
		yOffset = offset * math.cos(GetAngleZ())
		translateTo(X - xOffset, Y - yOffset, Z, GetAngleX(), GetAngleY(), GetAngleZ(), translateSpeed)
		
	elseif Button == 4
		translateTo(X, Y, Z + offset, GetAngleX(), GetAngleY(), GetAngleZ(), translateSpeed)
		
	elseif Button == 5
		translateTo(X, Y, Z - offset, GetAngleX(), GetAngleY(), GetAngleZ(), translateSpeed)
	
	elseif Button == 6
		Return
	EndIf
	
	if Button != 6
		Positioning()
	EndIf
EndFunction