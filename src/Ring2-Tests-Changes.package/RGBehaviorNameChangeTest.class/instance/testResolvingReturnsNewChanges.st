tests
testResolvingReturnsNewChanges

	"check if the resolving returns always a change copy"

	| class change |
	
	class := RGClass named: #OldName.
	class := class name: #RGClass.
	
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	self checkResolvingReturnsNewObjectsFor: change.