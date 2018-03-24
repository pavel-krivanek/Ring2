*Ring2-Core
asRing2MinimalDefinitionIn: aRGEnvironment

	^ aRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGPackageDefinition named: self name asSymbol parent: aRGEnvironment ]