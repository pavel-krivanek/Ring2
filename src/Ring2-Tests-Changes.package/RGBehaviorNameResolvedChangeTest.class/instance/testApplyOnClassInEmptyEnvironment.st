tests - apply
testApplyOnClassInEmptyEnvironment

	"test applying on a different empty environment. It should raise a resolving error"

	| class emptyEnvironment change |
	
	class := RGClass unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	
	self should: [ change applyIn: emptyEnvironment ] raise: RGResolvingError.
		