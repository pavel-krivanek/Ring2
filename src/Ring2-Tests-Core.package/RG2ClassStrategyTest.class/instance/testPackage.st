tests
testPackage

	| aClass aPackage |
	
	aClass := RG2Class named: #SomeClass.
	aPackage := aClass environment ensurePackageNamed: 'Package'.
	
	aClass package: aPackage.
	self assert: (aClass package == aPackage).