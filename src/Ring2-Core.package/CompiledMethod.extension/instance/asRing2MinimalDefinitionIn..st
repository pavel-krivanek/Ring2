*Ring2-Core
asRing2MinimalDefinitionIn: aRG2Environment

	^ aRG2Environment backend definitionFor: self ifAbsentRegister: [
		RG2MethodDefinition named: self selector asSymbol parent: (self methodClass asRing2MinimalDefinitionIn: aRG2Environment)]
