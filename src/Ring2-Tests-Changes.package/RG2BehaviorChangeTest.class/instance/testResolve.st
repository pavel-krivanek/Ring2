tests
testResolve

	| class change |
	
	class := RG2Behavior newClass.
	change := RG2BehaviorChange for: class.
	class name: #SomeClass.
	self deny: change hasResolvedOrigin.
	self assert: change resolve equals: true.
	self assert: change hasResolvedOrigin.
	
	