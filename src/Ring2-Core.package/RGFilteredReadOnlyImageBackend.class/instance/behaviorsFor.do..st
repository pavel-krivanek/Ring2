environment
behaviorsFor: anRGEnvironment do: aBlock

	self allowedClasses do: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRingMinimalDefinitionIn: anRGEnvironment].
		aBlock value: def.].