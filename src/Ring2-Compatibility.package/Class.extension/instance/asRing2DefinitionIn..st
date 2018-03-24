*Ring2-Compatibility
asRing2DefinitionIn: aRGEnvironment

	^ aRGEnvironment ask behaviors detect: [:each | 
			each name = self name]  ifNone: [ RGNotFoundError signal ]