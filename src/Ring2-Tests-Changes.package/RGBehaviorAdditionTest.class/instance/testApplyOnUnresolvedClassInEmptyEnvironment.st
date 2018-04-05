tests - apply
testApplyOnUnresolvedClassInEmptyEnvironment

	"apply change of unresolved class in a empty environment. It should create an unresolved class"
	| class emptyEnvironment change |
	
	class := RGClass unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorAddition for: class.
	change applyIn: emptyEnvironment.
	
	self assert: emptyEnvironment ask behaviors size equals: 4.
