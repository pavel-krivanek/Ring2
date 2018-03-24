*Ring2-Core
asRing2MinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGEphemeronLayout parent: (self host asRing2MinimalDefinitionIn: anRGEnvironment)]
