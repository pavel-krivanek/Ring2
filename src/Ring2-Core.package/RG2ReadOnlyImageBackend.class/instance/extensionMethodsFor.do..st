package
extensionMethodsFor: aRG2Package do: aBlock

	| realPackage |
	
	realPackage := self realPackageFor: aRG2Package.
	realPackage ifNotNil: [ 
		realPackage extensionMethods do: [:aCompiledMethod |
			| def | 
			def := self definitionFor: aCompiledMethod ifAbsentRegister: [aCompiledMethod asRing2MinimalDefinitionIn: aRG2Package environment].
			aBlock value: def.]]