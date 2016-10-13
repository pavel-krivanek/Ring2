*Ring2-Core
asRing2MinimalCommentDefinitionIn: aRG2Environment

	^ aRG2Environment backend definitionFor: ('classComment:', self name) asSymbol ifAbsentRegister: [
		RG2CommentDefinition parent: (self asRing2MinimalDefinitionIn: aRG2Environment).
	]. 
	