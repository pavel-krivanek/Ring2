tests
testAddingChangeFromDifferentEnvironment

	| change |
	
	change := RGBehaviorNameChange for: (RGClass named: #OldName) oldName: #OldName newName: #NewName.

	list add: change1.
	
	self should: [ list add: change ] raise: RGWrongEnvironment.