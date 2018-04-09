*Ring2-TraitsV1Support
asRingMinimalCommentDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: ('classComment:', self name) asSymbol ifAbsentRegister: [
		RGComment parent: (self asRingMinimalDefinitionIn: anRGEnvironment).
	]. 
	