tests
testReverseOnClassInTheSameEnvironment

	| method  change |
	
	method := RGMethod unresolved.
	method name: #someName.

	change := RGMethodNameResolvedChange for: method newName: #someName.
	
	change reverseIn: method environment.
	
	self assert: method hasResolvedName not.
