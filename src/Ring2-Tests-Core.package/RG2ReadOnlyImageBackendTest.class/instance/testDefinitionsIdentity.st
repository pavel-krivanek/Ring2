tests
testDefinitionsIdentity

	| env1 |
	
	env1 := RG2Environment new.
	env1 backend: (RG2ReadOnlyImageBackend for: env1).
	
	self assert: (((Object>>#isRing2Object) asRing2DefinitionIn: env1) == ((Object>>#isRing2Object) asRing2DefinitionIn: env1)).
	
	self assert: (((Object>>#isRing2Object) asRing2DefinitionIn: env1) parent
== ((Object>>#isRing2Object) asRing2DefinitionIn: env1) parent).