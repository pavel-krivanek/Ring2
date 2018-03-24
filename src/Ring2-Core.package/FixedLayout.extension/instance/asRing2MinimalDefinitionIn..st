*Ring2-Core
asRing2MinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGFixedLayout parent: (self host asRing2MinimalDefinitionIn: anRGEnvironment)]
