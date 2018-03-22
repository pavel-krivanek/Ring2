tests
testApplyOnClassInTheSameEnvironment

	| class change |
	
	class := RG2Class unresolved.
	change := RG2BehaviorNameResolvedChange for: class newName: #NewName.
	
	change applyIn: class environment.
		
	self assert: class name equals: #NewName.