*Ring2-Core
asRing2MinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGClass named: self name asSymbol parent: anRGEnvironment]. 
	