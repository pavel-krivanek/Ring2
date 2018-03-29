testing
testReverseOnClassInTheSameEnvironment

	| class change |
	
	class := RGClass named: #SomeClass.
	change := RGBehaviorAdditionWithName for: class.
	
	change reverseIn: class environment.
		
	self assert: (class environment ask classNamed: #SomeClass) equals: nil.
	

