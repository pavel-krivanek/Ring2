tests
testReverseInWithResolving

	| aClass |
	
	list add: change1.
	list add: change2.
	list add: change3.
	
	aClass := RG2Class named: #NewName.
	list resolveOrigins.
	list reverseIn: aClass environment.

	self should: [ list environment ask behaviorNamed: #NewName ] raise: RG2NotFoundError.