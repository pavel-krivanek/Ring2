tests
testSimpleResolvingAfter

	| method change |
	
	method := RGMethod unresolved.
	method name: #someMethod.
	change := RGMethodNameResolvedChange for: method newName: #someMethod.
	
	self assert: change method equals: method.
	self assert: change newName equals: #someMethod.
	