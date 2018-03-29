running
setUp
	
	| class change |

	super setUp.
	
	class := RGClass named: #OldName.
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	resolvingContext := RGChangesResolvingContext forChanges: { change }.