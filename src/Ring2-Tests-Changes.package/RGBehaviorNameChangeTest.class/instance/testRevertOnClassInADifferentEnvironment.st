tests - revert
testRevertOnClassInADifferentEnvironment

	"test reverting in class in a different environment that already includes a class with the new name. It should rename it to the old name."

	| class class2 change |
	
	class := RGClass named: #OldName.
	class name: #NewName.
	class2 := RGClass named: #NewName.

	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	change revertIn: class2 environment.
		
	self assert: class2 name equals: #OldName.