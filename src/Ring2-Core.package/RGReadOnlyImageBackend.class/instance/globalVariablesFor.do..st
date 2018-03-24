environment
globalVariablesFor: aRGEnvironment do: aBlock

	Smalltalk globals associations do: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRing2MinimalDefinitionIn: aRGEnvironment].
		aBlock value: def.].