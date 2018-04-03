tests
testSimpleResolving

	| method change |
	
	method := RGMethod unresolved.
	change := RGMethodNameResolvedChange for: method newName: #someMethod.
	method name: #someMethod.
	
	self assert: change method equals: method.
	self assert: change newName equals: #someMethod.
	