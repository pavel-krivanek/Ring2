running
testPrepareForChangeWithOriginId

	| class change |

	class := RGClass named: #OldName.
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	change originId: 42.

	resolvingContext := RGChangesResolvingContext forChanges: { change }.	
		
	self assert: (resolvingContext knowsId: 42).
