testing
testApplyOnUnresolvedClassInEmptyEnvironment

	| class emptyEnvironment change |
	
	class := RGClass unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAddition for: class.
	change applyIn: emptyEnvironment.
	
	self assert: emptyEnvironment ask behaviors size equals: 4.
