tests
testReverseInWithResolving

	| aClass |
	
	list add: change1.
	list add: change2.
	list add: change3.
	
	aClass := RG2Class named: #NewName.
	list resolveOrigins.
	list reverseIn: aClass environment.

	self assert: (list environment ask behaviorNamed: #NewName) isNil