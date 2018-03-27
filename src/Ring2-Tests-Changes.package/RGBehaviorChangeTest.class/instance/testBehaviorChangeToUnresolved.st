tests
testBehaviorChangeToUnresolved

	| class class2 change |
	
	class := RGClass named: #SomeClass.
	class2 := RGBehavior newClass.
	change := RGBehaviorChange for: class.
	change behavior: class2.
	self deny: change hasResolvedOriginName 
	