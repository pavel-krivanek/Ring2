testing
testApplyOnClassInADifferentEnvironment

	| class1 class2 change |
	
	class1 := RG2Class named: #SomeClass.
	class2 := RG2Class named: #SomeClass.
	change := RG2BehaviorAddition for: class1.

	self assert: class2 environment ask behaviors size equals: 4.

	change applyIn: class2 environment.

	self assert: class2 environment ask behaviors size equals: 4.
	self assert: (class2 environment ask classNamed: #SomeClass) equals: class2.