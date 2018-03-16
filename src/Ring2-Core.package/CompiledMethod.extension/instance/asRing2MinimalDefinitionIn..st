*Ring2-Core
asRing2MinimalDefinitionIn: aRG2Environment

	^ aRG2Environment backend definitionFor: self ifAbsentRegister: [
		RG2Method named: self selector asSymbol parent: (self methodClass asRing2MinimalDefinitionIn: aRG2Environment)]
