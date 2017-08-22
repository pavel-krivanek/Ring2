tests
testUnpackagedPackage

	| env package | 
	
	env := RG2Environment new.
	self assert: env unpackagedPackageOrNil equals: nil.
	package := env ensurePackageNamed: '_UnpackagedPackage'.
	
	self assert: env unpackagedPackageOrNil equals: package.
	
	