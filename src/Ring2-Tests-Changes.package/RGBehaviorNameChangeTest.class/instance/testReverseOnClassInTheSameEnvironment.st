tests - revert
testReverseOnClassInTheSameEnvironment

	"test reverting in a class in the same environment. It should rename the class back"

	| class change |
	
	class := RGClass named: #NewName.
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	change reverseIn: class environment.
		
	self assert: class name equals: #OldName.