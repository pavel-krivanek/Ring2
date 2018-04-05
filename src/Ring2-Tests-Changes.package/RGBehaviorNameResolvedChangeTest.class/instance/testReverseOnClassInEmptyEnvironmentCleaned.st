tests
testReverseOnClassInEmptyEnvironmentCleaned

	| class emptyEnvironment change |
	
	class := RGClass unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	change clean.
	
	self should: [ change reverseIn: emptyEnvironment ] raise: RGResolvingError.
		