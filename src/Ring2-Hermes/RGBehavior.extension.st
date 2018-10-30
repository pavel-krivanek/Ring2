Extension { #name : #RGBehavior }

{ #category : #'*Ring2-Hermes' }
RGBehavior >> categoryOfElement: aSymbol [ 
	
	| aMethod |
	
	aMethod := (self localMethodNamed: aSymbol ifAbsent: nil).
	^ aMethod ifNotNil: [ aMethod protocol ] 
]
