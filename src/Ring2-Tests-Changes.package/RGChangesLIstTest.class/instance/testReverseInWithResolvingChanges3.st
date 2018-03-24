tests
testReverseInWithResolvingChanges3

	| aClass |
	
	list add: change3.
	
	aClass := RGClass named: #NewName.
	list resolveOrigins.
	list reverseIn: aClass environment.

	self assert: (aClass environment ask behaviorNamed: #SomeClass) notNil.
