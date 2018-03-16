*Ring2-Hermes
categoryOfElement: aSymbol 
	
	| aMethod |
	
	aMethod := (self localMethodNamed: aSymbol ifAbsent: nil).
	^ aMethod ifNotNil: [ aMethod protocol ] 