*Ring2-Compatibility
asRingDefinitionIn: anRGEnvironment

	^ (self methodClass asRingDefinitionIn: anRGEnvironment) methods detect: [:each | 
			each selector = self selector] ifNone: [ RGNotFoundError signal ]
	