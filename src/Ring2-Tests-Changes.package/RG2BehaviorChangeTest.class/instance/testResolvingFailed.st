tests
testResolvingFailed

	| class change |
	
	class := RG2Behavior newClass.
	change := RG2BehaviorChange for: class.
	self deny: change hasResolvedOrigin.
	self assert: change resolve equals: false.
	self deny: change hasResolvedOrigin.
	
	