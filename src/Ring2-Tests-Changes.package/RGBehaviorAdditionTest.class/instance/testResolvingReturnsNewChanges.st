tests - revert
testResolvingReturnsNewChanges

	| env class change |
	
	env := RGEnvironment new.
	class := env ensureClassNamed: #SomeClass.
	change := RGBehaviorAdditionWithName for: class.

	self checkResolvingReturnsNewObjectsFor: change.