*Ring2-Hermes
fromClassWithoutMethods: aClass
	className := aClass name.
	superclass := aClass superclass name.
	instanceVariables := (aClass slots collect: #name) joinUsing: ' '.
	classInstancevariables := (aClass class slots collect: #name) joinUsing: ' '.
	classVariables := aClass classPool keys joinUsing: ' '.
	sharedPools := (aClass sharedPools collect: #name) joinUsing: ' '.
	layoutClass := aClass classLayout class name.

	category := aClass category.
	traitComposition := aClass traitComposition asExportedLiteral.
	classTraitComposition := aClass theMetaClass traitComposition
		asExportedLiteral.

	methods := #().
	classSideMethods := #().