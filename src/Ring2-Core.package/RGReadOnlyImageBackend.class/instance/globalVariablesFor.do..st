environment
globalVariablesFor: anRGEnvironment do: aBlock

	Smalltalk globals associations do: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRing2MinimalDefinitionIn: anRGEnvironment].
		aBlock value: def.].