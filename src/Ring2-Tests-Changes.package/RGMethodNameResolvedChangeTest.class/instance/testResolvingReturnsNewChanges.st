tests
testResolvingReturnsNewChanges

	"check if the resolving returns always a change copy"

	| method change |
	
	method := RGMethod unresolved.
	change := RGMethodNameResolvedChange for: method newName: #someMethod.

	self checkResolvingReturnsNewObjectsFor: change.	