testing
testReverseOnClassInADifferentEnvironment

	| class class2 change env |
	
	class := RGClass named: #SomeClass.
	class2 := RGClass named: #SomeClass.
	env := class2 environment.

	change := RGBehaviorAddition for: class.
	change reverseIn: env.
		
	self assert: (env ask classNamed: #SomeClass) equals: nil.

