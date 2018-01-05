*Ring2-Compatibility
realClass: aClass selector: aString

	| env |
	
	env := RG2Environment new.
	(aClass>>aString asSymbol) ensureRing2DefinitionIn: env.
	env backend: (RG2ReadOnlyImageBackend for: env).
	^ env