tests
testReverseInWithResolvingChanges3

	| aClass resolvedChanges |
	
	list add: change3.
	
	aClass := RGClass named: #NewName.
	resolvedChanges := list resolveOrigins.
	list reverse: resolvedChanges in: aClass environment.

	self assert: (aClass environment ask behaviorNamed: #SomeClass) notNil.
