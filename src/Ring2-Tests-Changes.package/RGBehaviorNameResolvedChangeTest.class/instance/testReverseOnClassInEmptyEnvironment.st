tests
testReverseOnClassInEmptyEnvironment

	| class emptyEnvironment change |
	
	class := RGClass unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	
	self should: [ change reverseIn: emptyEnvironment ] raise: RGNotFoundError.
		