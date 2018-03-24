*Ring2-Core
asRing2MinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGMethod named: self selector asSymbol parent: (self methodClass asRing2MinimalDefinitionIn: anRGEnvironment)]
