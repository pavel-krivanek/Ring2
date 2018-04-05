tests - apply
testApplyOnClassInADifferentEnvironment

	"test applying of class renaming on a different environment that already contains a class of the same name. It should rename it."

	| class class2 change |
	
	class := RGClass named: #OldName.
	class2 := RGClass named: #OldName.

	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	change applyIn: class2 environment.
		
	self assert: class2 name equals: #NewName.