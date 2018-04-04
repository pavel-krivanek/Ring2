tests
testReverseChangeCreatedBeforeActualResolvingAndCleaned

	| method change |
	
	method := RGMethod unresolved.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	change clean.
	method name: #someName.

	self should: [ change reverseIn: method environment. ] raise: RGResolvingError.