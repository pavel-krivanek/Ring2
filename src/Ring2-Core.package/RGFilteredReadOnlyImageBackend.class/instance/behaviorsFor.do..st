environment
behaviorsFor: aRGEnvironment do: aBlock

	self allowedClasses do: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRing2MinimalDefinitionIn: aRGEnvironment].
		aBlock value: def.].