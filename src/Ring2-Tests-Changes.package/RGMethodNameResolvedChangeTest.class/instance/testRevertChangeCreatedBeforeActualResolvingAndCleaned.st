tests - revert
testRevertChangeCreatedBeforeActualResolvingAndCleaned

	"test if we can revert a cleaned change created after the actual method name resolving. It should raise a resolving error because we lost a binding to real behavior because we do not know the class name"

	| method change |
	
	method := RGMethod unresolved.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	change clean.
	method name: #someName.

	self should: [ change revertIn: method environment. ] raise: RGResolvingError.