*Ring2-Compatibility
asRing2DefinitionIn: anRGEnvironment

	^ (self methodClass asRing2DefinitionIn: anRGEnvironment) methods detect: [:each | 
			each selector = self selector] ifNone: [ RGNotFoundError signal ]
	