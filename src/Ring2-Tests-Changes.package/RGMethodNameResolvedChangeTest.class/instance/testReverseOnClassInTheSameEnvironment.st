tests - revert
testReverseOnClassInTheSameEnvironment

	"try to revert the method resolving in the same environment. The method belongs to an unresolved class. It should unresolve the method name because we still know the original method object"

	| method  change |
	
	method := RGMethod unresolved.
	method name: #someName.

	change := RGMethodNameResolvedChange for: method newName: #someName.
	
	change reverseIn: method environment.
	
	self assert: method hasResolvedName not.
