tests
testReverseOnClassInADifferentEnvironment

	| class class2 change result |
	
	class := RGClass unresolved.
	class name: #NewName.
	class2 := RGClass named: #NewName.

	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	
	result := change reverseIn: class2 environment.
	
	self assert: result equals: class2.
		
	self assert: class2 hasResolvedName not.
	self assert: (class2 environment ask behaviorNamed: #NewName) equals: nil.