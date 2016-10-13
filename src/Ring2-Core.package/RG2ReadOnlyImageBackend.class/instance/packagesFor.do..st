environment
packagesFor: aRG2Environment do: aBlock

	RPackageOrganizer default packagesDo: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRing2MinimalDefinitionIn: aRG2Environment].
		aBlock value: def.].