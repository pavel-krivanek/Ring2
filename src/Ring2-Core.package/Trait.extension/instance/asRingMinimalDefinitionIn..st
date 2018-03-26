*Ring2-Core
asRingMinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGTrait named: self name parent: anRGEnvironment]
