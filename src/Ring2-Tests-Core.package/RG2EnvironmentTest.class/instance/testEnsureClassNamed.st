tests
testEnsureClassNamed

	| env definition | 
	
	env := RG2Environment new.
	definition := env ensurePackageNamed: 'SomePackage'.
	self assert: definition isPackage. 

	env := RG2Environment new.
	definition := env ensureClassNamed: 'SomeClass'.
	self assert: definition isClass. 
	self assert: definition isMetaclass not. 	
	self assert: definition isTrait not. 	
	self assert: definition isMetaclassTrait not. 	

	env := RG2Environment new.
	definition := env ensureClassNamed: 'SomeClass class'.
	self assert: definition isClass not. 
	self assert: definition isMetaclass. 	
	self assert: definition isTrait not. 	
	self assert: definition isMetaclassTrait not. 	

