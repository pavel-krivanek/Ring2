*Ring2-Core
asRing2MinimalDefinitionIn: aRGEnvironment parent: aRGLayout

	^ aRGEnvironment backend definitionFor: self ifAbsentRegister: [
		| def |
		def := RGUnknownSlot named: self name asSymbol parent: aRGLayout.
		def ].