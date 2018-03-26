tests
testBehaviorChangeToResolved

	| class class2 change |
	
	class := RGBehavior newClass.
	class2 := RGClass named: #SomeClass.
	change := RGBehaviorChange for: class.

	self should: [change behavior: class2] raise: RGWrongEnvironment
	