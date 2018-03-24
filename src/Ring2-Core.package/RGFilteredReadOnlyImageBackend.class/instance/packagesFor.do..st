environment
packagesFor: anRGEnvironment do: aBlock

	(self allowedClasses collect: #package as: Set) do: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRing2MinimalDefinitionIn: anRGEnvironment].
		aBlock value: def.].