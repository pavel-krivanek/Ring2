tests - revert
testReverseOnExistingMethodInTheSameEnvironment

	"test reverting of the method name resolving in the same environment. It should unresolve the method name."

	| method change |
	
	method := RGMethod named: #someName.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	method name: #someName.

	change reverseIn: method environment.
		
	self assert: method hasResolvedName not.
