tests
testApplyOnClassInEmptyEnvironment

	| class emptyEnvironment change |
	
	class := RG2Class unresolved.
	emptyEnvironment := RG2Environment new.

	change := RG2BehaviorNameResolvedChange for: class newName: #NewName.
	
	self should: [ change applyIn: emptyEnvironment ] raise: RG2NotFoundError.
		