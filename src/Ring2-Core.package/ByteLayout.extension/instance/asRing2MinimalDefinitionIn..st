*Ring2-Core
asRing2MinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGByteLayout parent: (self host asRing2MinimalDefinitionIn: anRGEnvironment)]
