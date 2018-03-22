tests
testReverseOnClassInEmptyEnvironment

	| class emptyEnvironment change |
	
	class := RG2Class named: #OldName.
	emptyEnvironment := RG2Environment new.

	change := RG2BehaviorNameChange for: class from: #OldName to: #NewName.
	
	self should: [ change reverseIn: emptyEnvironment ] raise: RG2NotFoundError.
		