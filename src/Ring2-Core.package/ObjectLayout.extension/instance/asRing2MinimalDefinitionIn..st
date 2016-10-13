*Ring2-Core
asRing2MinimalDefinitionIn: aRG2Environment

	^ aRG2Environment backend definitionFor: self ifAbsentRegister: [
		RG2ObjectLayoutDefinition parent: (self host asRing2MinimalDefinitionIn: aRG2Environment)]
