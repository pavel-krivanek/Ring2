running
testPrepareForChangeWithoutOriginId

	"when the change has no ID, the context should not register it"

	| class change |

	class := RGClass named: #OldName.
	change := RGBehaviorNameChange for: class oldName: #OldName newName: #NewName.

	resolvingContext := RGChangesResolvingContext forChanges: { change }.	

	self deny: (change hasOriginId).
	self deny: (resolvingContext knowsId: 42).
	self deny: (resolvingContext knowsId: nil).
