*Ring2-Core
asRing2MinimalDefinitionIn: anRGEnvironment

	^ self asRing2MinimalDefinitionIn: anRGEnvironment parent: (self definingClass classLayout asRing2MinimalDefinitionIn: anRGEnvironment)