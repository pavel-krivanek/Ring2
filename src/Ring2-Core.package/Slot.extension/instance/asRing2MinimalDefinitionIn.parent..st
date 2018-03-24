*Ring2-Core
asRing2MinimalDefinitionIn: anRGEnvironment parent: anRGLayout

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		| def |
		def := RGUnknownSlot named: self name asSymbol parent: anRGLayout.
		def ].