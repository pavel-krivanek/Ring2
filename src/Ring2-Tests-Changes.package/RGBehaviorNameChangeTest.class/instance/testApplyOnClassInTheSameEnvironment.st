tests
testApplyOnClassInTheSameEnvironment

	| class change result |
	
	class := RGClass named: #OldName.
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	result := change applyIn: class environment.
	self assert: result equals: class.
		
	self assert: class name equals: #NewName.