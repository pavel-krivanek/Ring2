tests
testSimpleResolvingAfter

	"test if we can create a change after the actual method name resolving"

	| method change |
	
	method := RGMethod unresolved.
	method name: #someMethod.
	change := RGMethodNameResolvedChange for: method newName: #someMethod.
	
	self assert: change method equals: method.
	self assert: change newName equals: #someMethod.
	