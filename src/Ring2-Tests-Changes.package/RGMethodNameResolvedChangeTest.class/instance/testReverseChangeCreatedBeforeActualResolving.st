tests
testReverseChangeCreatedBeforeActualResolving

	| method change result |
	
	method := RGMethod unresolved.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	method name: #someName.

	result := change reverseIn: method environment.
	self assert: result equals: method.
	
	self assert: method hasResolvedName not.
	self assert: (method environment ask behaviorNamed: #someName) equals: nil.