tests
testResolvingReturnsNewChanges

	| method change |
	
	method := RGMethod unresolved.
	change := RGMethodNameResolvedChange for: method newName: #someMethod.

	self checkResolvingReturnsNewObjectsFor: change.	