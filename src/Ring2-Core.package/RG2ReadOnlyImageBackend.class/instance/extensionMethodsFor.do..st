package
extensionMethodsFor: aRG2PackageDefinition do: aBlock

	| realPackage |
	
	realPackage := self realPackageFor: aRG2PackageDefinition.
	realPackage ifNotNil: [ 
		realPackage extensionMethods do: [:aCompiledMethod |
			| def | 
			def := self definitionFor: aCompiledMethod ifAbsentRegister: [aCompiledMethod asRing2MinimalDefinitionIn: aRG2PackageDefinition environment].
			aBlock value: def.]]