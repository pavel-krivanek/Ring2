Extension { #name : #Trait }

{ #category : #'*Ring2-TraitsV1Support' }
Trait >> asRingMinimalCommentDefinitionIn: anRGEnvironment [

	^ anRGEnvironment backend definitionFor: ('classComment:', self name) asSymbol ifAbsentRegister: [
		RGComment parent: (self asRingMinimalDefinitionIn: anRGEnvironment).
	]. 
	
]

{ #category : #'*Ring2-TraitsV1Support' }
Trait >> asRingMinimalDefinitionIn: anRGEnvironment [

	^ anRGEnvironment backend definitionFor: self ifAbsentRegister: [
		RGTrait named: self name parent: anRGEnvironment]

]
