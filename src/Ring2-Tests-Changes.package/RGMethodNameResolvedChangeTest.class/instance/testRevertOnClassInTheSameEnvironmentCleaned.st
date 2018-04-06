tests - revert
testRevertOnClassInTheSameEnvironmentCleaned

		"try to revert the cleaned method resolving change in the same environment. The method belongs to an unresolved class. It should raise a resolving error because we cannot assign the change to any existing method"

	| method  change |
	
	method := RGMethod unresolved.
	method name: #someName.

	change := RGMethodNameResolvedChange for: method newName: #someName.
	change clean.
	
	self should: [ change revertIn: method environment ] raise: RGResolvingError.