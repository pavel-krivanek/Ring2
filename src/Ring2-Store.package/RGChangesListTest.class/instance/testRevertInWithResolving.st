tests
testRevertInWithResolving

	| aClass results |
	
	list add: change1.
	list add: change2.
	list add: change3.
	
	aClass := RGClass named: #NewName.
	results := list revertIn: aClass environment.

	self assert: (list environment ask behaviorNamed: #NewName) isNil.
	self assert: (results asOrderedCollection allSatisfy: [ :each | each = aClass ]).
	