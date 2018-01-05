*Ring2-Compatibility
realClass: aClass selector: aString

	| env aMethod |
	
	env := RG2Environment new.
	aMethod := (aClass>>aString asSymbol) ensureRing2DefinitionIn: env.
	env backend: (RG2ReadOnlyImageBackend for: env).
	^ aMethod