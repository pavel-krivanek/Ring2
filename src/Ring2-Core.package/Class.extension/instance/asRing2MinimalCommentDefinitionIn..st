*Ring2-Core
asRing2MinimalCommentDefinitionIn: anRGEnvironment

	^ anRGEnvironment backend definitionFor: ('classComment:', self name) asSymbol ifAbsentRegister: [
		RGComment parent: (self asRing2MinimalDefinitionIn: anRGEnvironment).
	]. 
	