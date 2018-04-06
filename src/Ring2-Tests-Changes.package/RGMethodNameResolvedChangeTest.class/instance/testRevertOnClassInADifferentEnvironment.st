tests - revert
testRevertOnClassInADifferentEnvironment

	"try to revert the method name change in the different environment. The method has unresolved class. It should raise a resolving error."

	| method method2 change |
	
	method := RGMethod unresolved.
	method name: #someName.
	method2 := RGMethod named: #newName.

	change := RGMethodNameResolvedChange for: method newName: #newName.
	
	self should: [ change revertIn: method2 environment ] raise: RGResolvingError.