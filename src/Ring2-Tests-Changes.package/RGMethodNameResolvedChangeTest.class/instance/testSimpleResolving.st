tests
testSimpleResolving

	"test if we can create a change before the actual method name resolving"

	| method change |
	
	method := RGMethod unresolved.
	change := RGMethodNameResolvedChange for: method newName: #someMethod.
	method name: #someMethod.
	
	self assert: change method equals: method.
	self assert: change newName equals: #someMethod.
	