*Ring2-Core
ensureRing2DefinitionIn: aRGEnvironment

	^ aRGEnvironment ask behaviors 
		detect: [:each | each name = self name] 
		ifNone: [ 
			| behaviorModel |
			behaviorModel := self asRing2MinimalDefinitionIn: aRGEnvironment.
			aRGEnvironment addBehavior: behaviorModel.
			behaviorModel]