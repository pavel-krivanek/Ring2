tests - revert
testReverseOnClassInEmptyEnvironmentCleaned

	"try to revert the class in a empty environment without a binding to a real behavior. It should raise a resolving error"

	| class emptyEnvironment change |
	
	class := RGClass unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	change clean.
	
	self should: [ change reverseIn: emptyEnvironment ] raise: RGResolvingError.
		