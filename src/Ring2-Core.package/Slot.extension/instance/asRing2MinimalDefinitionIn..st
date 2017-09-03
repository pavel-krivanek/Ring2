*Ring2-Core
asRing2MinimalDefinitionIn: aRG2Environment

	^ self asRing2MinimalDefinitionIn: aRG2Environment parent: (self definingClass classLayout asRing2MinimalDefinitionIn: aRG2Environment)