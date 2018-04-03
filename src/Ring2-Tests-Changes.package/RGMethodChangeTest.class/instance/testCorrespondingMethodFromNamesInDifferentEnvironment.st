tests
testCorrespondingMethodFromNamesInDifferentEnvironment

	| class method class2 method2 change result |
	
	class := RGClass named: #SomeClass.
	method := class ensureLocalMethodNamed: #someMethod.
	class2 := RGClass named: #SomeClass.
	method2 := class2 ensureLocalMethodNamed: #someMethod.

	change := RGMethodChange for: method.
	
	result := change correspondingMethodFrom: method2 environment named: #someMethod in: #SomeClass.
	
	self assert: result equals: method2.