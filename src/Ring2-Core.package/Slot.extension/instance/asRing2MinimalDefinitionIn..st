*Ring2-Core
asRing2MinimalDefinitionIn: aRGEnvironment

	^ self asRing2MinimalDefinitionIn: aRGEnvironment parent: (self definingClass classLayout asRing2MinimalDefinitionIn: aRGEnvironment)