tests
testEmptyLayout

	| env layout |
	
	env := RGEnvironment new.
	env backend: (RGReadOnlyImageBackend for: env).
	
	self should: [EmptyLayout instance asRing2MinimalDefinitionIn: env] raise: Error.