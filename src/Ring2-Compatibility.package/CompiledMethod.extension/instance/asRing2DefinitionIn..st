*Ring2-Compatibility
asRing2DefinitionIn: aRGEnvironment

	^ (self methodClass asRing2DefinitionIn: aRGEnvironment) methods detect: [:each | 
			each selector = self selector] ifNone: [ RGNotFoundError signal ]
	