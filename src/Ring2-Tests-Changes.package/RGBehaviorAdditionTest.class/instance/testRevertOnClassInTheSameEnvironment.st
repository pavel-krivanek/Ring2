tests - revert
testRevertOnClassInTheSameEnvironment

	| class change |
	
	class := RGClass named: #SomeClass.
	change := RGBehaviorAdditionWithName for: class.
	
	change revertIn: class environment.
		
	self assert: (class environment ask classNamed: #SomeClass) equals: nil.
	

