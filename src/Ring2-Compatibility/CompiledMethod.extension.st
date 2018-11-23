Extension { #name : #CompiledMethod }

{ #category : #'*Ring2-Compatibility' }
CompiledMethod >> asRGDefinition [
	"Retrieves an active RGMethod object based on the receiver.
	Note that its class is not converted."
	
	^ self ensureRingDefinitionIn: RGEnvironment new
]

{ #category : #'*Ring2-Compatibility' }
CompiledMethod >> asRingDefinitionIn: anRGEnvironment [

	^ (self methodClass asRingDefinitionIn: anRGEnvironment) methods detect: [:each | 
			each selector = self selector] ifNone: [ RGNotFoundError signal ]
	
]
