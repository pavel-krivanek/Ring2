tests
testReverseOnClassInADifferentEnvironment

	| class class2 change |
	
	class := RGClass unresolved.
	class name: #NewName.
	class2 := RGClass named: #NewName.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	
	change reverseIn: class2 environment.
		
	self assert: class2 hasResolvedName not.
	self assert: (class2 environment ask behaviorNamed: #NewName) equals: nil.