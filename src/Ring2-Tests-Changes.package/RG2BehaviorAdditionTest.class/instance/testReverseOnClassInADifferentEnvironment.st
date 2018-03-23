testing
testReverseOnClassInADifferentEnvironment

	| class class2 change env |
	
	class := RG2Class named: #SomeClass.
	class2 := RG2Class named: #SomeClass.
	env := class2 environment.

	change := RG2BehaviorAddition for: class.
	change reverseIn: env.
		
	self assert: (env ask classNamed: #SomeClass) equals: nil.

