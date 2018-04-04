tests
testChangeCreationAfterActualNameChange

	| class change |
	
	class := RGClass named: #OldName.

	class name: #NewName.

	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	self assert: change behaviorName equals: #OldName