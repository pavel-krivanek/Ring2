*Ring2-Core
asRing2MinimalDefinitionIn: aRGEnvironment

	^ aRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGEphemeronLayout parent: (self host asRing2MinimalDefinitionIn: aRGEnvironment)]
