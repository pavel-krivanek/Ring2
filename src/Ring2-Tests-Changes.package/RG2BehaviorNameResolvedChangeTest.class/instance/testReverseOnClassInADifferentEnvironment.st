tests
testReverseOnClassInADifferentEnvironment

	| class class2 change |
	
	class := RG2Class unresolved.
	class name: #NewName.
	class2 := RG2Class named: #NewName.

	change := RG2BehaviorNameResolvedChange for: class newName: #NewName.
	
	change reverseIn: class2 environment.
		
	self assert: class2 hasResolvedName not.
	self assert: (class2 environment ask behaviorNamed: #NewName) equals: nil.