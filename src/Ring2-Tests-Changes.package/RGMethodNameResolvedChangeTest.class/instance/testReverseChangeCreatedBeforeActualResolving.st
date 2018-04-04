tests
testReverseChangeCreatedBeforeActualResolving

	| method change |
	
	method := RGMethod unresolved.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	method name: #someName.

	change reverseIn: method environment.
	
	self assert: method hasResolvedName not.
	self assert: (method environment ask behaviorNamed: #someName) equals: nil.