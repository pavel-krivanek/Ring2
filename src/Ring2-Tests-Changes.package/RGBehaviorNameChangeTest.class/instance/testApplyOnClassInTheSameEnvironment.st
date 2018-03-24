tests
testApplyOnClassInTheSameEnvironment

	| class change |
	
	class := RGClass named: #OldName.
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	change applyIn: class environment.
		
	self assert: class name equals: #NewName.