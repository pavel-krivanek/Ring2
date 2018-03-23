tests
testAddingChangeFromDifferentEnvironment

	| change |
	
	change := RG2BehaviorNameChange for: (RG2Class named: #OldName) oldName: #OldName newName: #NewName.

	list add: change1.
	
	self should: [ list add: change ] raise: RG2WrongEnvironment.