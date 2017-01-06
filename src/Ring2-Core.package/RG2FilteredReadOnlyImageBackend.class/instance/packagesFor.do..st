environment
packagesFor: aRG2Environment do: aBlock

	(self allowedClasses collect: #package as: Set) do: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRing2MinimalDefinitionIn: aRG2Environment].
		aBlock value: def.].