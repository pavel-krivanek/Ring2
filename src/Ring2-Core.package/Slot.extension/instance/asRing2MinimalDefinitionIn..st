*Ring2-Core
asRing2MinimalDefinitionIn: aRG2Environment

	^ aRG2Environment backend definitionFor: self ifAbsentRegister: [
		| def |
		def := RG2UnknownSlotDefinition named: self name asSymbol parent: (self definingClass classLayout asRing2MinimalDefinitionIn: aRG2Environment).
		def ].