*Ring2-Core
asRingMinimalDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGMetaclassTrait named: self name parent: anRGEnvironment]
