*Ring2-Core
asRing2MinimalDefinitionIn: aRG2Environment

	^ aRG2Environment backend definitionFor: self ifAbsentRegister: [
		RG2ClassDefinition named: self name asSymbol parent: aRG2Environment]. 
	