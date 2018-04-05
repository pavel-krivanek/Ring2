tests - revert
testReverseOnClassInADifferentEnvironment

	| class class2 change env deletedBehavior |
	
	class := RGClass named: #SomeClass.
	class2 := RGClass named: #SomeClass.
	env := class2 environment.

	change := RGBehaviorAdditionWithName for: class.
	deletedBehavior := change reverseIn: env.
	
	self assert: deletedBehavior equals: class2.
		
	self assert: (env ask classNamed: #SomeClass) equals: nil.

	self deny: (env ask behaviors includes: deletedBehavior).
