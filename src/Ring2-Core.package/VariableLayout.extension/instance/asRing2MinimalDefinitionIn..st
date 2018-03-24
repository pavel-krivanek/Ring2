*Ring2-Core
asRing2MinimalDefinitionIn: aRGEnvironment

	^ aRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGVariableLayout parent: (self host asRing2MinimalDefinitionIn: aRGEnvironment)]
