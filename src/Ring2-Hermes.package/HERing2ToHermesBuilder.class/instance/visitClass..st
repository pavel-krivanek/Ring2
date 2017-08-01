visiting
visitClass: aClass
	| aHEClass |
	
	aHEClass := HEClass new.
	self visitMethodContainer: aClass using: aHEClass.

	aHEClass className: aClass name.
	aHEClass superclass: aClass superclass name.
	aHEClass instanceVariables: ((aClass slots collect: #name) joinUsing: ' ').
	aHEClass classInstancevariables: ((aClass metaclass slots collect: #name) joinUsing: ' ').
	aHEClass classVariables: (aClass classPool keys joinUsing: ' ').
	aHEClass sharedPools: ((aClass sharedPools collect: #name) joinUsing: ' ').
	aHEClass layoutClass: aClass layout layoutName.

	aHEClass category: aClass category.
	aHEClass traitComposition: aClass traitComposition asExportedLiteral.
	aHEClass classTraitComposition: aClass theMetaClass traitComposition asExportedLiteral.


	^ aHEClass.