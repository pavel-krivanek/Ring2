tests
testReverseInWithResolvingChanges2to3

	| aClass results |
	
	list add: change2.
	list add: change3.
	
	aClass := RGClass named: #NewName.
	results := list reverseIn: aClass environment.

	self assert: (aClass environment ask behaviorNamed: #NewName) isNil.
	self assert: (results asOrderedCollection allSatisfy: [ :each | each = aClass ]).
	
