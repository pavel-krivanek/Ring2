tests
testResolvingReturnsNewChanges

	| class change |
	
	class := RGClass unresolved.
	change := RGBehaviorNameResolvedChange for: class newName: #NewName.

	self checkResolvingReturnsNewObjectsFor: change.	
	
	