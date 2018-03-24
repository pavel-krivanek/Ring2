*Ring2-Core
ensureRing2DefinitionIn: aRGEnvironment

	| parentModel |
	
	parentModel := (self methodClass ensureRing2DefinitionIn: aRGEnvironment).
	
	^ parentModel methods 
		detect: [:each | each selector = self selector]
		ifNone: [ 
			| methodModel |
			methodModel := self asRing2MinimalDefinitionIn: aRGEnvironment.
			parentModel addLocalMethod: methodModel.
			methodModel ]	