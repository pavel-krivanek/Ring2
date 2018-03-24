*Ring2-Core
asRing2MinimalCommentDefinitionIn: aRGEnvironment

	^ aRGEnvironment backend definitionFor: ('classComment:', self name) asSymbol ifAbsentRegister: [
		RGComment parent: (self asRing2MinimalDefinitionIn: aRGEnvironment).
	]. 
	