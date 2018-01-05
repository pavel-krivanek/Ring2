*Ring2-Compatibility
asActiveRing2Definition

	| env aMethod |
	
	env := RG2Environment new.
	aMethod := self ensureRing2DefinitionIn: env.
	env backend: (RG2ReadOnlyImageBackend for: env).
	^ aMethod