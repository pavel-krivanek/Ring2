*Ring2-Core
asRing2MinimalDefinitionIn: aRG2Environment parent: aRG2Layout

	^ aRG2Environment backend definitionFor: self ifAbsentRegister: [
		| def |
		def := RG2UnknownSlot named: self name asSymbol parent: aRG2Layout.
		def ].