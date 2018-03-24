*Ring2-Core
asRing2MinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGImmediateLayout parent: (self host asRing2MinimalDefinitionIn: anRGEnvironment)]
