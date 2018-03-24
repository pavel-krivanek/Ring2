environment
packagesFor: aRGEnvironment do: aBlock

	RPackageOrganizer default packagesDo: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRing2MinimalDefinitionIn: aRGEnvironment].
		aBlock value: def.].