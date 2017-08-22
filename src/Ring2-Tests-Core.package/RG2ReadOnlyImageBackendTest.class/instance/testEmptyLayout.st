tests
testEmptyLayout

	| env layout |
	
	env := RG2Environment new.
	env backend: (RG2ReadOnlyImageBackend for: env).
	
	self should: [EmptyLayout instance asRing2MinimalDefinitionIn: env] raise: Error.