testing
testApplyOnUnresolvedClassInEmptyEnvironment

	| class emptyEnvironment change |
	
	class := RGClass unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAddition for: class.
	self should: [ change applyIn: emptyEnvironment ] raise: RGNotFoundError.
