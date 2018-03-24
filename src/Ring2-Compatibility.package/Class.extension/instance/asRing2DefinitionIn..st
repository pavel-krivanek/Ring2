*Ring2-Compatibility
asRingDefinitionIn: anRGEnvironment

	^ anRGEnvironment ask behaviors detect: [:each | 
			each name = self name]  ifNone: [ RGNotFoundError signal ]