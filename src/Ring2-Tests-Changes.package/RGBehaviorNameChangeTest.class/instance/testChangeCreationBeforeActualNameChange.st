tests
testChangeCreationBeforeActualNameChange

	| class change |
	
	class := RGClass named: #OldName.

	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.

	class name: #NewName.

	self assert: change behaviorName equals: #OldName