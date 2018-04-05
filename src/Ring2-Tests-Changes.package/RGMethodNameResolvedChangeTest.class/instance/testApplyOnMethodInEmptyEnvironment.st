tests - apply
testApplyOnMethodInEmptyEnvironment

	"test if we can apply a change on an empty environment. It should raise a resolving error"

	| method emptyEnvironment change |
	
	method := RGMethod unresolved.
	emptyEnvironment := RGEnvironment new.

	change := RGMethodNameResolvedChange for: method newName: #someMethod.
	
	self should: [ change applyIn: emptyEnvironment ] raise: RGResolvingError.
		