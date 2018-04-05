tests
testResolvingReturnsNewChanges

	| class change |
	
	class := RGClass named: #OldName.
	class := class name: #RGClass.
	
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	self checkResolvingReturnsNewObjectsFor: change.