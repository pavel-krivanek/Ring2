testing
testApplyOnUnresolvedClassInEmptyEnvironment

	| class emptyEnvironment change |
	
	class := RG2Class unresolved.
	emptyEnvironment := RG2Environment new.

	change := RG2BehaviorAddition for: class.
	self should: [ change applyIn: emptyEnvironment ] raise: RG2NotFoundError.
