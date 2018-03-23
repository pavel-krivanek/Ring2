testing
testReverseOnClassInTheSameEnvironment

	| class change |
	
	class := RG2Class named: #SomeClass.
	change := RG2BehaviorAddition for: class.
	
	change reverseIn: class environment.
		
	self assert: (class environment ask classNamed: #SomeClass) equals: nil.
	

