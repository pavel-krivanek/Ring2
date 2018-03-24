environment
packagesFor: anRGEnvironment do: aBlock

	RPackageOrganizer default packagesDo: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRing2MinimalDefinitionIn: anRGEnvironment].
		aBlock value: def.].