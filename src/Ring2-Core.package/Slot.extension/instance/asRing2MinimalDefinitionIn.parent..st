*Ring2-Core
asRing2MinimalDefinitionIn: aRG2Environment parent: aRG2LayoutDefinition

	^ aRG2Environment backend definitionFor: self ifAbsentRegister: [
		| def |
		def := RG2UnknownSlotDefinition named: self name asSymbol parent: aRG2LayoutDefinition.
		def pvtExpression: (self printString copyAfter: $>) trimmed.
		def ].