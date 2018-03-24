environment
behaviorsFor: anRGEnvironment do: aBlock

	self allowedClasses do: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRing2MinimalDefinitionIn: anRGEnvironment].
		aBlock value: def.].