tests - revert
testReverseOnResolvedClassInADifferentEnvironmentWithCopy

	"try to revert the method name resolving in the different environment that contains a corresponding class and method. The change is cleaned. It should unresolve the method name "

	| class class2 method method2 change |
	
	class := RGClass named: #SomeClass.
	method := class ensureUnresolvedLocalMethod.
	method name: #someName.
	class2 := RGClass named: #SomeClass.
	method2 := class2 ensureLocalMethodNamed: #newName.

	change := RGMethodNameResolvedChange for: method newName: #newName.
	self deny: change environment equals: method2 environment.
	change := change copy clean.
	
	change reverseIn: method2 environment.
		
	self assert: method2 hasResolvedName not.
	self assert: (method2 environment ask behaviorNamed: #newName) equals: nil.