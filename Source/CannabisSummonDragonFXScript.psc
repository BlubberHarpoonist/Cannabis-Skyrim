Scriptname CannabisSummonDragonFXScript extends activemagiceffect  

Spell Property CannabisSummonDragonSpell Auto
Actor Property CannabisSummonedDragon Auto

Event OnEffectStart(Actor akTarget, Actor akCaster)
	CannabisSummonedDragon As Actor
	akCaster.PlaceAtMe(CannabisSummonedDragon, 1, False, True)
	CannabisSummonedDragon.MoveTo(akCaster, 50.0 * Math.Sin(akCaster.GetAngleZ()), 50.0 * Math.Cos(akCaster.GetAngleZ()), akCaster.GetHeight() + 50.0)
	CannabisSummonedDragon.Enable()
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	CannabisSummonedDragon.Disable()
	CannabisSummonedDragon.Delete()
EndEvent