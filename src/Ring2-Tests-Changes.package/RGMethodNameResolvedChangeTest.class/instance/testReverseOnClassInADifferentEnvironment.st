tests
testReverseOnClassInADifferentEnvironment

	| method method2 change |
	
	method := RGMethod unresolved.
	method name: #someName.
	method2 := RGMethod named: #newName.

	change := RGMethodNameResolvedChange for: method newName: #newName.
	
	self should: [ change reverseIn: method2 environment ] raise: RGResolvingError.