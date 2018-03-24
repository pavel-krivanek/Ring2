tests
testBehaviorChangeToResolved

	| class class2 change |
	
	class := RGBehavior newClass.
	class2 := RGClass named: #SomeClass.
	change := RGBehaviorChange for: class.
	change behavior: class2.
	self assert: change behaviorName equals: #SomeClass.
	self assert: change hasResolvedOrigin 
	