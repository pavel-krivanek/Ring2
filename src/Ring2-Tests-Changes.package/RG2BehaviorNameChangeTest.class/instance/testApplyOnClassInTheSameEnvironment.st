tests
testApplyOnClassInTheSameEnvironment

	| class change |
	
	class := RG2Class named: #OldName.
	change := RG2BehaviorNameChange for: class from: #OldName to: #NewName.
	
	change applyIn: class environment.
		
	self assert: class name equals: #NewName.