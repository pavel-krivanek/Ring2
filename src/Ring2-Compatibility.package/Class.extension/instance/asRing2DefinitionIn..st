*Ring2-Compatibility
asRing2DefinitionIn: anRGEnvironment

	^ anRGEnvironment ask behaviors detect: [:each | 
			each name = self name]  ifNone: [ RGNotFoundError signal ]