tests
testHasResolvedOriginForResolved

	| class change |
	
	class := RG2Class named: #SomeClass.
	change := RG2BehaviorChange for: class.
	self assert: change behavior hasResolvedOrigin 
	