*Ring2-Core
asRing2MinimalDefinitionIn: aRGEnvironment

	^ aRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGByteLayout parent: (self host asRing2MinimalDefinitionIn: aRGEnvironment)]
