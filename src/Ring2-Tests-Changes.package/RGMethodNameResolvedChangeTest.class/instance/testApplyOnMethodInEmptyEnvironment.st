tests
testApplyOnMethodInEmptyEnvironment

	| method emptyEnvironment change |
	
	method := RGMethod unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGMethodNameResolvedChange for: method newName: #someMethod.
	
	self should: [ change applyIn: emptyEnvironment ] raise: RGResolvingError.
		