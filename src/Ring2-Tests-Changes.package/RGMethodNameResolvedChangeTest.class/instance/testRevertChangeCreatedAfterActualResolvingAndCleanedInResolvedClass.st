tests - revert
testRevertChangeCreatedAfterActualResolvingAndCleanedInResolvedClass

	"test if we can revert a cleaned change created after the actual method name resolving. Method has known class. It should unresolve the method name"

	| class method change |
	
	class := RGClass named: #SomeClass.
	method := class ensureUnresolvedLocalMethod.
	method name: #someName.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	change clean.

	change revertIn: method environment. 

	self assert: method hasResolvedName not.