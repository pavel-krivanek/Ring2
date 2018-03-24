*Ring2-Core
ensureRing2DefinitionIn: anRGEnvironment

	^ anRGEnvironment ask behaviors 
		detect: [:each | each name = self name] 
		ifNone: [ 
			| behaviorModel |
			behaviorModel := self asRing2MinimalDefinitionIn: anRGEnvironment.
			anRGEnvironment addBehavior: behaviorModel.
			behaviorModel]