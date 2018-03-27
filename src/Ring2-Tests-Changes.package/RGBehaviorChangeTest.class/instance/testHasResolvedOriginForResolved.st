tests
testHasResolvedOriginForResolved

	| class change |
	
	class := RGClass named: #SomeClass.
	change := RGBehaviorChange for: class.
	self assert: change hasResolvedOriginName 
	