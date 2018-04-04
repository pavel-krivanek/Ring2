tests
testReverseOnClassInTheSameEnvironmentCleaned

	| method  change |
	
	method := RGMethod unresolved.
	method name: #someName.

	change := RGMethodNameResolvedChange for: method newName: #someName.
	change clean.
	
	self should: [ change reverseIn: method environment ] raise: RGResolvingError.