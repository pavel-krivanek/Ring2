tests
testResolvingFailed

	| class change |
	
	class := RGBehavior newClass.
	change := RGBehaviorChange for: class.
	self deny: change hasResolvedOriginName.
	self assert: change resolve equals: false.
	self deny: change hasResolvedOriginName.
	
	