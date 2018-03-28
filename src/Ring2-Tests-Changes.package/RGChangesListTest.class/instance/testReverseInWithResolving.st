tests
testReverseInWithResolving

	| aClass resolvedChanges |
	
	list add: change1.
	list add: change2.
	list add: change3.
	
	aClass := RGClass named: #NewName.
	resolvedChanges := list resolveOrigins.
	list reverse: resolvedChanges in: aClass environment.

	self assert: (list environment ask behaviorNamed: #NewName) isNil