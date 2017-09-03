*Ring2-Compatibility
asRing2DefinitionIn: aRG2Environment

	^ (self methodClass asRing2DefinitionIn: aRG2Environment) methods detect: [:each | 
			each selector = self selector] ifNone: [ RG2NotFoundError signal ]
	