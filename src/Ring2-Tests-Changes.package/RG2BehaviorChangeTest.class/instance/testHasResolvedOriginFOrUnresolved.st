tests
testHasResolvedOriginFOrUnresolved

	| class change |
	
	class := RG2Behavior newClass.
	change := RG2BehaviorChange for: class.
	self deny: change behavior hasResolvedOrigin 
	