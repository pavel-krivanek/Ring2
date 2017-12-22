tests
testMoveExtensionMethodsBetweenPackages
	
	| env aClass package1 package2 package3 method |
	
	env := RG2Environment new.
	package1 := env ensurePackageNamed: #Package1.
	package2 := env ensurePackageNamed: #Package2.
	package3 := env ensurePackageNamed: #Package3.
	aClass := env ensureClassNamed: #SomeClass.
	method := aClass ensureLocalMethodNamed: 'msg'.
	aClass package: package1.
	method package: package2.
	self assert: aClass package equals: package1.
	self assert: method package equals: package2.
	self assert: (package1 extensionMethods isEmpty).
	self assert: (package2 extensionMethods includes: method).
	self assert: (package3 extensionMethods isEmpty).

	method package: package3.
	
	self assert: aClass package equals: package1.
	self assert: method package equals: package3.
	self assert: (package1 extensionMethods isEmpty).
	self assert: (package2 extensionMethods isEmpty).
	self assert: (package3 extensionMethods includes: method).
	

