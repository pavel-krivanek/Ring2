tests - revert
testRevertOnClassInEmptyEnvironment

	"test reverting on an empty environment. It should raise a resolving error"

	| class emptyEnvironment change |
	
	class := RGClass named: #OldName.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	self should: [ change revertIn: emptyEnvironment ] raise: RGResolvingError.
		