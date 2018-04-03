tests
testReverseOnMethodInEmptyEnvironment

	| method emptyEnvironment change |
	
	method := RGMethod unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGMethodNameResolvedChange for: method newName: #NewName.
	
	self should: [ change reverseIn: emptyEnvironment ] raise: RGResolvingError.
		