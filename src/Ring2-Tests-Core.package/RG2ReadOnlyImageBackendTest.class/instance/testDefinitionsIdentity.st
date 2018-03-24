tests
testDefinitionsIdentity

	| env1 |
	
	env1 := RG2Environment new.
	env1 backend: (RG2ReadOnlyImageBackend for: env1).
	
	self assert: (((Object>>#isRGObject) asRing2MinimalDefinitionIn: env1) == ((Object>>#isRGObject) asRing2MinimalDefinitionIn: env1)).
	
	self assert: (((Object>>#isRGObject) asRing2MinimalDefinitionIn: env1) parent
== ((Object>>#isRGObject) asRing2MinimalDefinitionIn: env1) parent).