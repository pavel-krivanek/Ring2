environment
globalVariablesFor: aRG2Environment do: aBlock

	Smalltalk globals associations do: [:each |
		| def | 
		def := self definitionFor: each ifAbsentRegister: [each asRing2MinimalDefinitionIn: aRG2Environment].
		aBlock value: def.].