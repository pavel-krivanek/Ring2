*Ring2-Core
asRing2MinimalDefinitionIn: anRGEnvironment 

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGGlobalVariable named: self key asSymbol parent: anRGEnvironment].