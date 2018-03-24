*Ring2-Core
ensureRing2DefinitionIn: anRGEnvironment

	| parentModel |
	
	parentModel := (self methodClass ensureRing2DefinitionIn: anRGEnvironment).
	
	^ parentModel methods 
		detect: [:each | each selector = self selector]
		ifNone: [ 
			| methodModel |
			methodModel := self asRing2MinimalDefinitionIn: anRGEnvironment.
			parentModel addLocalMethod: methodModel.
			methodModel ]	