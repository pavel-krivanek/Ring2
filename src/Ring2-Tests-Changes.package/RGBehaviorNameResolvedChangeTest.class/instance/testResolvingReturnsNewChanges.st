tests
testResolvingReturnsNewChanges

	"check if the resolving returns always a change copy"

	| class change |
	
	class := RGClass unresolved.
	change := RGBehaviorNameResolvedChange for: class newName: #NewName.

	self checkResolvingReturnsNewObjectsFor: change.		
	