tests
testApplyOnClassInTheSameEnvironment

	| class change result |
	
	class := RGClass unresolved.
	change := RGBehaviorNameResolvedChange for: class newName: #NewName.
	
	result := change applyIn: class environment.
	self assert: result equals: class.
		
	self assert: class name equals: #NewName.