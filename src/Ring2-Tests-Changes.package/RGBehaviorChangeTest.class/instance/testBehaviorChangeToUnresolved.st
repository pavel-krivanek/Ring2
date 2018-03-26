tests
testBehaviorChangeToUnresolved

	| class class2 change |
	
	class := RGClass named: #SomeClass.
	class2 := RGBehavior newClass.
	change := RGBehaviorChange for: class.

	self should: [change behavior: class2] raise: RGWrongEnvironment
	