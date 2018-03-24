tests
testReverseOnClassInTheSameEnvironment

	| class change |
	
	class := RGClass named: #NewName.
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	change reverseIn: class environment.
		
	self assert: class name equals: #OldName.