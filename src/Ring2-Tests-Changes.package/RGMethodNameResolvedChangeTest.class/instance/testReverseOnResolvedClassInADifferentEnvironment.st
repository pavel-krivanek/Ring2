tests - revert
testReverseOnResolvedClassInADifferentEnvironment

	"try to revert the method name resolving in the different environment that contains a corresponding class and method. It should unresolve the method name "

	| class class2 method method2 change |
	
	class := RGClass named: #SomeClass.
	method := class ensureUnresolvedLocalMethod.
	method name: #someName.
	class2 := RGClass named: #SomeClass.
	method2 := class ensureLocalMethodNamed: #someName.

	change := RGMethodNameResolvedChange for: method newName: #someName.
	
	change reverseIn: method2 environment.
		
	self assert: method2 hasResolvedName not.
	self assert: (method2 environment ask behaviorNamed: #newName) equals: nil.