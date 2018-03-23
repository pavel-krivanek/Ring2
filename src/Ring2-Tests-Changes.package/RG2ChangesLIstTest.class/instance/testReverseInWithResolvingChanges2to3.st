tests
testReverseInWithResolvingChanges2to3

	| aClass |
	
	list add: change2.
	list add: change3.
	
	aClass := RG2Class named: #NewName.
	list resolveOrigins.
	list reverseIn: aClass environment.

	self assert: (aClass environment ask behaviorNamed: #NewName) isNil.
