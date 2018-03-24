testing
testApplyOnClassInTheSameEnvironment

	| class change |
	
	class := RGClass named: #SomeClass.
	change := RGBehaviorAddition for: class.

	self assert: class environment ask behaviors size equals: 4.

	change applyIn: class environment.

	self assert: class environment ask behaviors size equals: 4.
	self assert: (class environment ask classNamed: #SomeClass) equals: class.