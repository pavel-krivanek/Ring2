tests
testApplyOnClassInADifferentEnvironment

	| class class2 change |
	
	class := RG2Class named: #OldName.
	class2 := RG2Class named: #OldName.

	change := RG2BehaviorNameChange for: class from: #OldName to: #NewName.
	
	change applyIn: class2 environment.
		
	self assert: class2 name equals: #NewName.