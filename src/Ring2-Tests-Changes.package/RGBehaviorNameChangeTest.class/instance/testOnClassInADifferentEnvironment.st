tests
testOnClassInADifferentEnvironment

	| class class2 change result |
	
	class := RGClass named: #NewName.
	class2 := RGClass named: #NewName.

	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	result := change reverseIn: class2 environment.
	
	self assert: result equals: class2.
		
	self assert: class2 name equals: #OldName.