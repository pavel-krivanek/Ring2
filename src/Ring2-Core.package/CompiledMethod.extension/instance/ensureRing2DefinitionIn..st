*Ring2-Core
ensureRing2DefinitionIn: aRG2Environment

	| parentModel |
	
	parentModel := (self methodClass ensureRing2DefinitionIn: aRG2Environment).
	
	^ parentModel methods 
		detect: [:each | each selector = self selector]
		ifNone: [ 
			| methodModel |
			methodModel := self asRing2MinimalDefinitionIn: aRG2Environment.
			parentModel addLocalMethod: methodModel.
			methodModel ]	