testing
testApplyOnClassInEmptyEnvironment

	| class emptyEnvironment change |
	
	class := RG2Class named: #SomeClass.
	emptyEnvironment := RG2Environment new.

	change := RG2BehaviorAddition for: class.
	change applyIn: emptyEnvironment.

	self assert: emptyEnvironment ask behaviors size equals: 4.
	self assert: (emptyEnvironment ask classNamed: #SomeClass) notNil.