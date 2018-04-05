tests - apply
testApplyOnClassInEmptyEnvironment

	"test applying in the different environment. It should raise a resolving error because the there is no class of that name"

	| class emptyEnvironment change |
	
	class := RGClass named: #OldName.
	emptyEnvironment := RGEnvironment new.

	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	
	self should: [ change applyIn: emptyEnvironment ] raise: RGResolvingError.
		