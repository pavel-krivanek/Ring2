*Ring2-Core
asRing2MinimalDefinitionIn: aRGEnvironment 

	^ aRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGGlobalVariable named: self key asSymbol parent: aRGEnvironment].