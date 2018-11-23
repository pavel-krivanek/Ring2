Extension { #name : #Class }

{ #category : #'*Ring2-Compatibility' }
Class >> asRGDefinition [
	
	^ self ensureRingDefinitionIn: RGEnvironment new
]

{ #category : #'*Ring2-Compatibility' }
Class >> asRingDefinitionIn: anRGEnvironment [

	^ anRGEnvironment ask behaviors detect: [:each | 
			each name = self name]  ifNone: [ RGNotFoundError signal ]
]
