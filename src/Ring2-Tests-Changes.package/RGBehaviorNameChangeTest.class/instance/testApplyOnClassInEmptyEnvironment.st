tests
testApplyOnClassInEmptyEnvironment

	| class emptyEnvironment change |
	
	class := RGClass named: #OldName.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	self should: [ change applyIn: emptyEnvironment ] raise: RGResolvingError.
		