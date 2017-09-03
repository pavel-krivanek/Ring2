*Ring2-Compatibility
asRing2DefinitionIn: aRG2Environment

	^ aRG2Environment ask behaviors detect: [:each | 
			each name = self name]  ifNone: [ RG2NotFoundError signal ]