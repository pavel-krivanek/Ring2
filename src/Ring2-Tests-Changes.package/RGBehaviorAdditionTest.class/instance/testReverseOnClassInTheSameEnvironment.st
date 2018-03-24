testing
testReverseOnClassInTheSameEnvironment

	| class change |
	
	class := RGClass named: #SomeClass.
	change := RGBehaviorAddition for: class.
	
	change reverseIn: class environment.
		
	self assert: (class environment ask classNamed: #SomeClass) equals: nil.
	

