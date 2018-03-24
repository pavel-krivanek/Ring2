tests
testApplyOnClassInTheSameEnvironment

	| class change |
	
	class := RGClass unresolved.
	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	
	change applyIn: class environment.
		
	self assert: class name equals: #NewName.