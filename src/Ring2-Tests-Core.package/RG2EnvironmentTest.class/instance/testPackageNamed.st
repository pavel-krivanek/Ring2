tests
testPackageNamed

	| env package | 
	
	env := RG2Environment new.
	package := env ensurePackageNamed: 'SomePackage'.
	self assert: (env ask packageNamed: 'SomePackage') equals: package.
	
	env := RG2Environment new.
	self assert: (env ask packageNamed: 'SomePackage') equals: nil.