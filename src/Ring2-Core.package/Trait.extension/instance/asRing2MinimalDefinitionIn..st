*Ring2-Core
asRing2MinimalDefinitionIn: aRGEnvironment

	^ aRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGTrait named: self name parent: aRGEnvironment]
