running
testPrepareForChangeWithOriginId

	"check that the changes origin IDs are kept after registration"

	| class change |

	class := RGClass named: #OldName.
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.
	change originId: 42.

	resolvingContext := RGChangesResolvingContext forChanges: { change }.	
		
	self assert: (resolvingContext knowsId: 42).
	self assert: change originId equals: 42.
