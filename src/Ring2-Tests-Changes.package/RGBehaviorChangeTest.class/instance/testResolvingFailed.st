tests
testResolvingFailed

	| class change |
	
	class := RGBehavior newClass.
	change := RGBehaviorChange for: class.
	self deny: change hasResolvedOrigin.
	self assert: change resolve equals: false.
	self deny: change hasResolvedOrigin.
	
	