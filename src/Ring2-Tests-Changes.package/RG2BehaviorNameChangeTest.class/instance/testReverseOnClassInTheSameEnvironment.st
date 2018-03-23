tests
testReverseOnClassInTheSameEnvironment

	| class change |
	
	class := RG2Class named: #NewName.
	change := RG2BehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	change reverseIn: class environment.
		
	self assert: class name equals: #OldName.