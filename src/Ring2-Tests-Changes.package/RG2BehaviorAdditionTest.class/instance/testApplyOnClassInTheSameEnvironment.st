testing
testApplyOnClassInTheSameEnvironment

	| class change |
	
	class := RG2Class named: #SomeClass.
	change := RG2BehaviorAddition for: class.

	self assert: class environment ask behaviors size equals: 4.

	change applyIn: class environment.

	self assert: class environment ask behaviors size equals: 4.
	self assert: (class environment ask classNamed: #SomeClass) equals: class.