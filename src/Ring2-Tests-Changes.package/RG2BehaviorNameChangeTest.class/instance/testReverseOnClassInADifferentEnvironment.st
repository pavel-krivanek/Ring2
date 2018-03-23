tests
testReverseOnClassInADifferentEnvironment

	| class class2 change |
	
	class := RG2Class named: #OldName.
	class name: #NewName.
	class2 := RG2Class named: #NewName.

	change := RG2BehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	change reverseIn: class2 environment.
		
	self assert: class2 name equals: #OldName.