Extension { #name : #RG2BehaviorDefinition }

{ #category : #'*Ring2-Hermes' }
RG2BehaviorDefinition >> categoryOfElement: aSymbol [ 
	
	| aMethod |
	
	aMethod := (self localMethodNamed: aSymbol ifAbsent: nil).
	^ aMethod ifNotNil: [ aMethod protocol ] 
]
