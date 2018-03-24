*Ring2-Core
asRing2MinimalDefinitionIn: aRGEnvironment

	^ aRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGMethod named: self selector asSymbol parent: (self methodClass asRing2MinimalDefinitionIn: aRGEnvironment)]
