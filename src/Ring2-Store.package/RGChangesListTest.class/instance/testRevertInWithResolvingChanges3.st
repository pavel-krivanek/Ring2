tests
testRevertInWithResolvingChanges3

	| aClass results |
	
	list add: change3.
	
	aClass := RGClass named: #NewName.
	results := list revertIn: aClass environment.

	self assert: (aClass environment ask behaviorNamed: #SomeClass) notNil.
	self assert: (results asOrderedCollection allSatisfy: [ :each | each = aClass ]).
