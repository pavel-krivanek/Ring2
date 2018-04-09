*Ring2-TraitsV1Support
asRingMinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGTrait named: self name parent: anRGEnvironment]
