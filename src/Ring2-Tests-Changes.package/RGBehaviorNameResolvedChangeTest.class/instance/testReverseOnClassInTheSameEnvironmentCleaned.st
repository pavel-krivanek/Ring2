tests
testReverseOnClassInTheSameEnvironmentCleaned

	| class change |
	
	class := RGClass unresolved.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	change clean.
	
	self should: [ change reverseIn: class environment ] raise: RGResolvingError.
		