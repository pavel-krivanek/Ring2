*Ring2-Core
asRing2MinimalDefinitionIn: aRGEnvironment

	^ aRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGWeakLayout parent: (self host asRing2MinimalDefinitionIn: aRGEnvironment)]
