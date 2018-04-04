tests
testReverseOnExistingMethodInTheSameEnvironment

	| method change |
	
	method := RGMethod named: #someName.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	method name: #someName.

	change reverseIn: method environment.
		
	self assert: method hasResolvedName not.
