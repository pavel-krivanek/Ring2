tests
testReverseChangeCreatedBeforeActualResolvingAndCleanedInResolvedClass

	| class method change |
	
	class := RGClass named: #SomeClass.
	method := class ensureUnresolvedLocalMethod.
	change := RGMethodNameResolvedChange for: method newName: #someName.
	change clean.
	method name: #someName.

	change reverseIn: method environment. 

	self assert: method hasResolvedName not.