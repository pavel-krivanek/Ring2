tests - revert
testRevertOnMethodInEmptyEnvironment

	"try to revert a method change in a empty environment. It should raise a resolving error."

	| method emptyEnvironment change |
	
	method := RGMethod unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGMethodNameResolvedChange for: method newName: #NewName.
	
	self should: [ change revertIn: emptyEnvironment ] raise: RGResolvingError.
		