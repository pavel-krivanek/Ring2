tests
testResolve

	| class change |
	
	class := RGBehavior newClass.
	change := RGBehaviorChange for: class.
	class name: #SomeClass.
	self deny: change hasResolvedOriginName.
	self assert: change resolve equals: true.
	self assert: change hasResolvedOriginName.
	
	